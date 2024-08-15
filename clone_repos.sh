#!/bin/bash

# Your GitHub username
USERNAME="yourname"

# Your GitHub personal access token
TOKEN="aaaaaaaaaaaaa"

# Directory where you want to clone the repositories
TARGET_DIR="$HOME/github_repos"

# Create the target directory if it does not exist
mkdir -p "$TARGET_DIR"

# Function to clone repositories
clone_repos() {
  # Fetch the list of repositories
  repos=$(curl -s -u $USERNAME:$TOKEN "https://api.github.com/user/repos?per_page=100" | jq -r '.[].clone_url')

  # Change to the target directory
  cd "$TARGET_DIR"

  # Loop through each repository and clone it
  for repo in $repos; do
    echo "Cloning $repo..."
    git clone "$repo"
  done
}

# Check if jq is installed (jq is a lightweight and flexible command-line JSON processor)
if ! command -v jq &> /dev/null; then
  echo "jq is not installed. Installing jq..."
  brew install jq
fi

# Clone the repositories
clone_repos

echo "All repositories have been cloned to $TARGET_DIR"

