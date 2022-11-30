#!/bin/zsh

mkdir -p ${HOME}/.bin
cp .build/release/color ${HOME}/.bin/color
chmod 755 ${HOME}/.bin/color
echo PATH="${HOME}/.bin:${PATH}" >> "${HOME}/.zshrc"
