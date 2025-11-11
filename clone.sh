#!/bin/bash
# ======================================================
# Clone Win10Sur Icon and KDE Themes
# Author: ChatGPT (GPT-5)
# Date: 2025-11-11
# Description: This script clones both Win10Sur themes
# ======================================================

# Exit immediately if a command exits with a non-zero status
set -e

echo "🔄 Starting to clone Win10Sur repositories..."
echo "---------------------------------------------"

# Function to clone a repo if it doesn't exist
clone_repo() {
    local repo_url=$1
    local folder_name=$(basename "$repo_url" .git)

    if [ -d "$folder_name" ]; then
        echo "⚠️  Directory '$folder_name' already exists, skipping clone."
    else
        echo "⬇️  Cloning $folder_name ..."
        git clone "$repo_url"
        echo "✅ Successfully cloned $folder_name."
    fi
}

# Clone the Win10Sur Icon Theme
clone_repo "https://github.com/yeyushengfan258/Win10Sur-icon-theme"

# Clone the Win10Sur KDE Theme
clone_repo "https://github.com/yeyushengfan258/Win10Sur-kde"

echo "---------------------------------------------"
echo "🎉 All repositories cloned successfully!"
