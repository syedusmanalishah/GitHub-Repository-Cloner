# GitHub Repository Cloner

This Bash script automates cloning your public GitHub repositories into a designated directory.

## Features

Clones all your public GitHub repositories securely.
Leverages personal access tokens for authentication.
Organizes cloned repositories in a specified location.
Provides clear feedback on cloning progress and completion.

## Prerequisites

Bash: This script is written in Bash, the default shell on most Linux distributions.
git: Git is required for cloning GitHub repositories. Install it using your system's package manager (e.g., sudo apt install git on Ubuntu/Debian, sudo yum install git on RHEL/CentOS).
jq: This script uses jq for parsing JSON responses. Install it using your system's package manager (e.g., sudo apt install jq on Ubuntu/Debian, sudo yum install jq on RHEL/CentOS). Alternatively, for macOS with Homebrew, run the command provided in the script (brew install jq).

Important: For security reasons, do not store your personal access token directly in the script. Instead, consider these options:

**Customize the script:**

Edit clone_repos.sh.
Replace yourname with your GitHub username.
Security: Follow the instructions in the "Installation (Security Note)" section to set your token securely.
Modify TARGET_DIR (optional) if you want the repositories in a different location.

**Run the script**

cd path_to_your_script

chmod +x clone_repos.sh

./clone_repos.sh
