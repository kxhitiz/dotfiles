#!/bin/bash

# Run the curl command to download vim-plug
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

# Check if the curl command was successful
if [ $? -eq 0 ]; then
    echo "vim-plug downloaded successfully."
else
    echo "Failed to download vim-plug. Please check your internet connection or try again later."
fi

# Get the current directory path
current_directory=$(pwd)

# Set the path to your GitHub repository's vimrc file
github_vimrc_path="$current_directory/vimrc"

# Set the path to your macOS Vim RC file
mac_vimrc_path="$HOME/.vimrc"

# Check if the GitHub vimrc file exists
if [ -f "$github_vimrc_path" ]; then
    # Remove the existing macOS Vim RC file if it exists
    if [ -f "$mac_vimrc_path" ]; then
        rm "$mac_vimrc_path"
    fi

    # Create the symlink
    ln -s "$github_vimrc_path" "$mac_vimrc_path"

    echo "Symlink created successfully."
else
    echo "GitHub vimrc file not found. Please provide the correct path."
fi
