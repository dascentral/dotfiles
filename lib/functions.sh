abort() {
    echo -e "${YELLOW}$@${NC}"; exit 1;
}

usage() {
    echo -e "${WHITE}$@${NC}"; exit 1;
}

info() {
    echo -e "${WHITE}$@${NC}"
}

line() {
    echo -e "${GRAY}$@${NC}"
}

success() {
    echo -e "${GREEN}$@${NC}"
}

warn() {
    echo -e "${YELLOW}$@${NC}"
}

die() {
    warn "$@"; exit 1;
}

escape() {
    echo "$1" | sed 's/\([\.\$\*]\)/\\\1/g'
}

has() {
    local item=$1; shift
    echo " $@ " | grep -q " $(escape $item) "
}


################################################################


clone_or_update_repo() {
    local label="$1"
    local repo="$2"
    local path="$3"

    if [ ! -d "$path" ]; then
        info "Cloning ${label}."
        git clone "$repo" "$path"
        return
    fi

    info "Updating ${label}."

    pushd "$path" > /dev/null || { abort "Failed to enter $path"; }

    if ! git rev-parse --is-inside-work-tree > /dev/null 2>&1; then
        popd > /dev/null
        abort "Not a git repository: $path"
    fi

    git fetch origin --quiet

    local current_branch trunk_branch stash_needed=false

    current_branch=$(git rev-parse --abbrev-ref HEAD)

    # Detect trunk: check the remote default branch first, then fall back to local branches
    trunk_branch=$(git symbolic-ref refs/remotes/origin/HEAD 2>/dev/null | sed 's|refs/remotes/origin/||')

    if [ -z "$trunk_branch" ]; then
        if git show-ref --verify --quiet refs/heads/main; then
            trunk_branch="main"
        elif git show-ref --verify --quiet refs/heads/master; then
            trunk_branch="master"
        elif git show-ref --verify --quiet refs/heads/develop; then
            trunk_branch="develop"
        else
            popd > /dev/null
            abort "No trunk branch found in ${label}. Skipping update."
        fi
    fi

    # Create trunk branch locally if it only exists on the remote
    if ! git show-ref --verify --quiet refs/heads/"$trunk_branch"; then
        git checkout -b "$trunk_branch" "origin/$trunk_branch" --quiet
        git checkout "$current_branch" --quiet 2>/dev/null || true
    fi

    # Check for uncommitted changes
    if ! git diff --quiet || ! git diff --cached --quiet; then
        line "Stashing uncommitted changes..."
        git stash push -u -m "Auto-stash before updating $trunk_branch"
        stash_needed=true
    fi

    # Checkout and pull latest trunk
    if [ "$current_branch" != "$trunk_branch" ]; then
        git checkout "$trunk_branch" || { abort "Failed to checkout $trunk_branch"; }
    fi

    git pull origin "$trunk_branch"

    # Restore original branch
    if [ "$current_branch" != "$trunk_branch" ]; then
        git checkout "$current_branch"
    fi

    # Reapply stashed changes if needed
    if [ "$stash_needed" = true ]; then
        line "Reapplying stashed changes..."
        git stash pop
    fi

    popd > /dev/null
}

# deprecated
composer_json() {
    [ -e "composer.json" ]
}

composer_json_exists() {
    [ -e "composer.json" ]
}

composer_installed() {
    [ -e /opt/homebrew/bin/composer ] ||
    [ -e /usr/local/bin/composer ] ||
    [ -e ${HOME}/Library/Application\ Support/Herd/bin/composer ]
}

confirm_composer_installed() {
    if ! composer_installed; then
        abort "Composer has not been installed. Aborting execution."
    fi
}

confirm_homebrew_installed() {
    if ! homebrew_installed; then
        abort "Homebrew has not been installed. Aborting execution."
    fi
}

confirm_ag_is_installed() {
    if [ ! -e "/opt/homebrew/bin/ag" ]; then
        abort "The Silver Searcher is not installed where expected - /opt/homebrew/bin/ag\nhttps://github.com/ggreer/the_silver_searcher"
    fi
}

docker_compose() {
    [ -e "docker-compose.yml" ]
}

dotfiles_live_where_expected() {
    if [ ! -e "${DOTFILES}" ]; then
        abort "The dotfiles repo does not exist in the expected location."
    fi
}

dotfiles_confirm_stable() {
    if [ -e "${PRIVATE}" ]; then
      cd ${PRIVATE}
      git update-index -q --refresh
      if ! git diff-index --quiet HEAD --; then
          abort "The private dotfiles repo has pending changes."
      fi
    fi

    cd ${DOTFILES}
    git update-index -q --refresh
    if ! git diff-index --quiet HEAD --; then
        abort "The dotfiles repo has pending changes."
    fi
}

git_branch_exists() {
    git show-ref --verify --quiet refs/heads/$1
}

git_current_branch() {
    git branch --no-color | grep '^\* ' | grep -v 'no branch' | sed 's/^* //g'
}

git_is_dirty() {
    [[ -n $(git status --porcelain) ]]
}

git_is_initialized() {
    git rev-parse --git-dir > /dev/null 2>&1;
}

git_local_branches() {
    git branch --no-color | sed 's/^[* ] //';
}

git_local_branch_exists() {
    has $1 $(git_local_branches)
}

git_repository() {
    git rev-parse --is-inside-work-tree > /dev/null 2>&1;
}

homebrew_installed() {
    [ -e /opt/homebrew/bin/brew ] || [ -e /usr/local/bin/brew ]
}

install_check_brewfile() {
    [ -f "${HOME}/.dotfiles/Brewfile" ]
}

laravel_application_root() {
    [ -e "artisan" ]
}

laravel_sail_is_running() {
    PSRESULT="$(docker-compose ps -q)"

    if docker-compose ps | grep 'Exit' &> /dev/null; then
        docker-compose down > /dev/null 2>&1

        return 1;
    fi

    [ -z "$PSRESULT" ] && return 1 || return 0
}

mkd() {
    mkdir -p "$@" && cd "$@"
}

oh_my_zsh_installed() {
    [ -e ${HOME}/.oh-my-zsh ]
}

package_json_exists() {
    [ -e "package.json" ]
}

# In theory, I should check for a .env first
using_laravel_sail() {
    grep -q "APP_PORT=8080" ".env"
}
