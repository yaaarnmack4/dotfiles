#!/bin/sh
cd $(dirname $0)

if [ -z "$(cat /etc/shells | grep $(brew --prefix)/bin/zsh)" ]; then
  grep -Fxq "$(brew --prefix)/bin/zsh" /etc/shells || sudo sh -c 'echo $(brew --prefix)/bin/zsh >> /etc/shells'
  chsh -s $(brew --prefix)/bin/zsh
fi

ln -s -f "$PWD/.zshrc" "$HOME/.zshrc"
sh -c "$(curl -fsSL https://git.io/zinit-install)"
