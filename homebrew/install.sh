#!/bin/sh
cd $(dirname $0)

if test ! "$(which brew)"; then
  echo "Install Homebrew"
  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
fi

brew bundle --file="./Brewfile" -v
brew cleanup
