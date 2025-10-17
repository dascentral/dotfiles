BGBLACK='\033[0;30m'
BGRED='\033[0;31m'
BGGREEN='\033[0;32m'
BGYELLOW='\033[0;33m'
BGBLUE='\033[0;34m'
BGPURPLE='\033[0;35m'
BGCYAN='\033[0;36m'
BGGRAY='\033[0;37m'

GRAY='\033[1;30m'
RED='\033[1;31m'
GREEN='\033[1;32m'
YELLOW='\033[1;33m'
BLUE='\033[1;34m'
PURPLE='\033[1;35m'
CYAN='\033[1;36m'
WHITE='\033[1;37m'

NC='\033[0m'

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

    local current_branch trunk_branch stash_needed=false

    current_branch=$(git rev-parse --abbrev-ref HEAD)

    # Detect trunk branch
    if git show-ref --verify --quiet refs/heads/develop; then
        trunk_branch="develop"
    elif git show-ref --verify --quiet refs/heads/main; then
        trunk_branch="main"
    else
        popd > /dev/null
        abort "No 'main' or 'develop' branch found in ${label}. Skipping update."
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

composer_json() {
    [ -e "composer.json" ]
}

composer_installed() {
    [ -e /opt/homebrew/bin/composer ] ||
    [ -e /usr/local/bin/composer ] ||
    [ -e /Users/${USER}/Library/Application\ Support/Herd/bin/composer ]
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
    if [ ! -e "${PRIVATE}" ]; then
      cd ${PRIVATE}
      if ! git diff-index --quiet HEAD --; then
          abort "The private dotfiles repo has pending changes."
      fi
    fi

    cd ${DOTFILES}
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

install_check_oh_my_zsh() {
    [ -e "${HOME}/.oh-my-zsh" ]
}

install_check_brewfile() {
    [ -f "${HOME}/.dotfiles/Brewfile" ]
}

install_check_fira_code() {
    fc-list | grep -q "Fira Code"
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

function mkd() {
    mkdir -p "$@" && cd "$@"
}

oh_my_zsh_installed() {
    [ -e /Users/${USER}/.oh-my-zsh ]
}

package_json_exists() {
    [ -e "package.json" ]
}

# In theory, I should check for a .env first
using_laravel_sail() {
    grep -q "APP_PORT=8080" ".env"
}
