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
)
taps=(
    "homebrew/cask-fonts"
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

brew install ${formulae[@]}
brew tap ${taps[@]}
brew install --cask ${casks[@]}

brew cleanup
