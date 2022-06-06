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
    alt-tab
    logitech-g-hub
)
taps=(
    "homebrew/cask-fonts"
    "homebrew/cask-drivers"
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
    docker
)

brew update

brew tap ${taps[@]}
brew install ${formulae[@]}
brew install --cask ${casks[@]}

brew cleanup
