#!/bin/bash

# Function to check if a command is available in the system
command_exists() {
    command -v "$1" >/dev/null 2>&1
}

# Check if Homebrew is installed
if ! command_exists brew; then
    echo "Homebrew is not installed. Please install Homebrew first."
    exit 1
fi

# Install the_silver_searcher
# if command_exists ag; then
#     echo "the_silver_searcher (ag) is already installed."
# else
#     # Install the_silver_searcher (ag) using Homebrew
#     echo "Installing the_silver_searcher (ag)..."
#     brew install the_silver_searcher
# fi 

# Check if npm is installed
if ! command -v npm &> /dev/null; then
    echo "npm is not installed. Please install Node.js and npm first."
    exit 1
fi

# Install emmet-ls globally using npm
# Using it for neovim
npm install -g emmet-ls

# Check if installation was successful
if [ $? -eq 0 ]; then
    echo "emmet-ls installed successfully."
else
    echo "Failed to install emmet-ls."
fi

# Install ripgrep using Homebrew for neovim plugin telescope grep search
brew install ripgrep

# Check if installation was successful
if [ $? -eq 0 ]; then
    echo "ripgrep installed successfully."
else
    echo "Failed to install ripgrep."
fi

# Run the curl command to download vim-plug
# curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
#    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

# Check if the curl command was successful
#if [ $? -eq 0 ]; then
#     echo "vim-plug downloaded successfully."
# else
#     echo "Failed to download vim-plug. Please check your internet connection or try again later."
# fi

# Get the current directory path
current_directory=$(pwd)

# Set the path to your GitHub repository's vimrc file
#github_vimrc_path="$current_directory/vimrc"

# Set the path to your macOS Vim RC file
#mac_vimrc_path="$HOME/.vimrc"

# Check if the GitHub vimrc file exists
#if [ -f "$github_vimrc_path" ]; then
#    # Remove the existing macOS Vim RC file if it exists
#    if [ -f "$mac_vimrc_path" ]; then
#        rm "$mac_vimrc_path"
#    fi
#
#    # Create the symlink
#    ln -s "$github_vimrc_path" "$mac_vimrc_path"
#
#    echo "Symlink created successfully."
#else
#    echo "GitHub vimrc file not found. Please provide the correct path."
#fi

# symlink neovim configuration
# Backup existing Neovim config (if it exists)
if [ -d "$HOME/.config/nvim" ]; then
    mv "$HOME/.config/nvim" "$HOME/.config/nvim_backup"
fi

# Create symlink to the cloned config
ln -s "$current_directory/nvim" "$HOME/.config/nvim"

echo "Neovim config symlink created successfully."

# symlink zsh aliases
ln -s "$current_directory/zsh-custom/aliases.zsh" "$HOME/.aliases"

# Using tmux-256color with macOS's Terminal.app
# Fixes: Cannot get delete key to work with tmux and OSX
# https://github.com/tmux/tmux/issues/1257#issuecomment-581378716
#$ brew install ncurses
#$ /usr/local/opt/ncurses/bin/infocmp tmux-256color > ~/tmux-256color.info
#$ tic -xe tmux-256color tmux-256color.info
## This creates a complied entry in ~/.terminfo
#$ infocmp tmux-256color | head
##       Reconstructed via infocmp from file: /Users/libin/.terminfo/74/tmux-256color
#tmux-256color|tmux with 256 colors,
