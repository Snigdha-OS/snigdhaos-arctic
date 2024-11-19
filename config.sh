#!/bin/bash

# Author        : ESHAN ROY
# Author URI    : https://eshanized.github.io

# NOTE : Run at your own Risk!

# Prompt user for GitHub username
read -p "Enter your GitHub username: " GITHUB_USERNAME

# Prompt user for GitHub email
read -p "Enter your GitHub email: " GITHUB_EMAIL

# Set the global Git configuration for username and email
git config --global user.name "$GITHUB_USERNAME"
git config --global user.email "$GITHUB_EMAIL"

# Confirm the changes
echo "GitHub username and email have been configured:"
git config --global user.name
git config --global user.email
