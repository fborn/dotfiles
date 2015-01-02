#!/usr/bin/env bash
#
# Homebrew
#
# This installs some of the common dependencies needed (or at least desired)
# using Homebrew.

PACKAGES=( brew-cask bash-completion )

# Check for Homebrew
if test ! $(which brew)
then
  echo "  Installing Homebrew"
  ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
else
  echo "  Updating Homebrew"
  brew update
fi

if ! brew doctor; then
  echo "\`brew doctor\` failed. Please resolve issues before continuing."
  exit 1
fi

# Install homebrew packages
for package in "${PACKAGES[@]}"; do
    brew install  $package || brew upgrade $package
done
