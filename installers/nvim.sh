#!/bin/sh

# Install Dracula PRO colorschemes
echo "  🔗 Linking dracula theme files..."
mkdir -p ~/.config/nvim/colorschemes/dracula_pro
cp -r ~/Library/Mobile\ Documents/com\~apple\~CloudDocs/DEV/dracula-pro/themes/vim/* ~/.config/nvim/colorschemes/dracula_pro/

echo "  🧛🏻‍♂️ Dracula installed"
