# Ruby Version Manager (RVM)

## Documentation

[https://rvm.io/rvm/install](https://rvm.io/rvm/install)

## Installation

### Install mpapis public key

```bash
gpg --keyserver hkp://keys.gnupg.net --recv-keys 409B6B1796C275462A1703113804BB82D39DC0E3 7D2BAF1CF37B13E2069D6956105BD0E739499BDB
```

This is a legacy installation command that I no longer use but am keeping around for fun.

```bash
gpg --keyserver hkp://pgp.mit.edu --recv-keys 409B6B1796C275462A1703113804BB82D39DC0E3 7D2BAF1CF37B13E2069D6956105BD0E739499BDB
```

### Install RVM stable with ruby

```bash
\curl -sSL https://get.rvm.io | bash -s stable --ruby
source /Users/$USER/.rvm/scripts/rvm
```
