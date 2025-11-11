#!/bin/bash

installscripts() {
    local repo_url=$1
    local folder_name=$(basename "$repo_url" .git)

    if [ -d "$folder_name" ]; then
        echo "Directory '$folder_name' already exists, skipping clone."
    else
        echo "Cloning $folder_name ..."
        cd "$repo" && ./install.sh
        echo "Successfully cloned $folder_name."
    fi
}