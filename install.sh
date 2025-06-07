#!/bin/bash

# Update and install dependencies
pkg update -y && pkg upgrade -y
pkg install python -y
pkg install git -y
rm -rf MIX-BOMBER

# Clone the tool
git clone https://github.com/ADIRTTA/MIX-BOMBER.git $HOME/MIX-BOMBER

# Install Python requirements
pkg install python-pip
pip install -r $HOME/MIX-BOMBER/requirements.txt

# Create shortcut command
echo 'python $HOME/MIX-BOMBER/MIX-BOMBER.py' > $PREFIX/bin/MIX-BOMBER
chmod +x $PREFIX/bin/MIX-BOMBER

# Done message
echo
echo "✅ MIX-BOMBER Installed Successfully!"
echo "👉 Run the tool by typing: MIX-BOMBER"
