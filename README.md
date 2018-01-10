# Evan's dotfiles
## Make sysconfigs great again

This repo should be the first thing installed on any new machine. It's
being developed and tested on fedora machines. YMMV on other OS's.

## Installation

Assuming you've just booted a new machine
```bash
cd; curl -#L https://github.com/evannoronha/dotfiles/tarball/master | tar -xzv --strip-components 1 --exclude={README.md,bootstrap.sh,.osx,LICENSE-MIT.txt}
```
