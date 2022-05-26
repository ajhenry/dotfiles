#!/bin/bash

set -eufo pipefail

formulae=(
    autojump
    bat
    curl
    deno
    fzf
    git
    git-delta
    git-gui
    jq
    less
    nano
    tealdeer
    xz
    pyenv
    thefuck
)
casks=(
    aerial
    google-chrome
    kap
    "iterm2"
    visual-studio-code
    font-fira-code
    font-fira-mono
    font-fira-sans
    unnaturalscrollwheels
    hiddenbar
    raycast
)

brew update

brew install ${formulae[@]}
brew install --cask ${casks[@]}

brew cleanup