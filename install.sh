\#!/bin/bash

GITHUB\_REPO=[https://github.com/yourusername/dotfiles.git](https://github.com/yourusername/dotfiles.git)
TEMP\_DIR=\$(mktemp -d)

echo "Cloning dotfiles repo..."
git clone "\$GITHUB\_REPO" "\$TEMP\_DIR"

# --- Vim ---

echo "Setting up vimrc..."
cp "\$TEMP\_DIR/vimrc" \~/.vimrc

# --- Zsh ---

echo "Setting up zshrc..."
cp "\$TEMP\_DIR/zshrc" \~/.zshrc

# --- VS Code ---

echo "Setting up VS Code settings..."
VSCODE\_DIR=\~/Library/Application\ Support/Code/User
mkdir -p "\$VSCODE\_DIR"
cp "\$TEMP\_DIR/settings.json" "\$VSCODE\_DIR/settings.json"

# --- JetBrains Mono Font ---

echo "Installing JetBrains Mono font..."
FONT\_URL=[https://github.com/ryanoasis/nerd-fonts/releases/download/v2.3.3/JetBrainsMono.zip](https://github.com/ryanoasis/nerd-fonts/releases/download/v2.3.3/JetBrainsMono.zip)
FONT\_TEMP=\$(mktemp -d)
curl -L "\$FONT\_URL" -o "\$FONT\_TEMP/JetBrainsMono.zip"
unzip -o "\$FONT\_TEMP/JetBrainsMono.zip" -d "\$FONT\_TEMP"
mkdir -p \~/Library/Fonts
cp "\$FONT\_TEMP"/\*.ttf \~/Library/Fonts/
rm -rf "\$FONT\_TEMP"

# --- Optional: reload Zsh ---

echo "Sourcing zshrc..."
source \~/.zshrc

# --- Cleanup ---

rm -rf "\$TEMP\_DIR"

echo "All dotfiles installed!"
