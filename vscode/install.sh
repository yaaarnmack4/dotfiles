#!/bin/sh
cd $(dirname $0)

while read -r extension; do
 code --install-extension "$extension"
done < "$PWD/extensions"

ln -s -f "$PWD/settings.json" "$HOME/Library/Application Support/Code/User/settings.json"
