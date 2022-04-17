#!/bin/sh
cd $(dirname $0)

#
# homebrew
#
echo "Backup Homebrew"
brew bundle dump --file="./homebrew/Brewfile" --force -d

#
# vscode
#
echo "Backup VSCode"
code --list-extensions | tee ./vscode/extensions
