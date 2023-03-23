#!/usr/bin/env bash

# 👏 How to backup and restore your Homebrew packages

# Backup
brew bundle dump

# View the backup
cat Brewfile

# Restore
brew bundle
# 👆 this assumes you have a Brewfile in the current dir
