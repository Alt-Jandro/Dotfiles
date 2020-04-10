#!/bin/sh

# emacs directory
EMACS_HOME="${HOME}/.emacs.d"

# set Internal Field Separator
IFS=": "
# dotfiles
DOTFILES="profile"
DOTFILES="bash_profile:${DOTFILES}"
DOTFILES="bashrc:${DOTFILES}"
DOTFILES="tmux.conf:${DOTFILES}"
DOTFILES="emacs.d:${DOTFILES}"

rm -rf "${EMACS_HOME}"

for DOTFILE in ${DOTFILES}; do
    # check if selected dotfiles exists
    if [ -f "${HOME}/.${DOTFILE}" ]; then
        rm -rf "${HOME}/.${DOTFILE}" >/dev/null 2>&1
    fi
done
