#!/bin/bash

# Install dependencies
pkg update -y && pkg upgrade -y
pkg install python -y
pkg install git -y

# Clone the repo
git clone https://github.com/ADIRTTA/MIX-BOMBER.git $HOME/MIX-BOMBER

# Add shortcut to ~/.bashrc or ~/.zshrc
echo 'python $HOME/MIX-BOMBER/MIX-BOMBER.py' > $PREFIX/bin/MIX-BOMBER
chmod +x $PREFIX/bin/MIX-BOMBER

echo
echo "✅ Installation complete!"
echo "👉 Now you can run the tool by typing: MIX-BOMBER"
