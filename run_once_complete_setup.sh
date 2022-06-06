#!/usr/bin/env bash
BOLD=$(tput bold)
NORM=$(tput sgr0)

# This script sets up everything you need for a new machine

# Install all the apps from homebrew
echo -e "${BOLD}Installing Homebrew apps"
~/config/homebrew/install.sh

# Install dependencies for node
echo -e "\n${BOLD}Installing nvm and npm dependencies"
~/config/node/install.sh

# Set preferences for macos
echo -e "\n${BOLD}Configuring OSX Preferences"
~/config/macos/install.sh

# Setup additional apps like vscode
echo -e "\n${BOLD}You must set up Raycast and iTerm profiles manually"

echo -e "\n\n${BOLD}Finished ✅"