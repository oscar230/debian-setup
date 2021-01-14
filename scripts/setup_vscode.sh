#!/bin/bash

# Install
wget "https://code.visualstudio.com/sha/download?build=stable&os=linux-deb-x64" -O /tmp/code.deb
sudo apt-get install -y /tmp/code.deb

# Update sources
sudo sh -c 'echo "deb [arch=amd64] http://packages.microsoft.com/repos/vscode stable main" > /etc/apt/sources.list.d/vscode.list'

# Config
VSCEXT="ms-python.python ms-vscode.cpptools dbaeumer.vscode-eslint ms-dotnettools.csharp ms-azuretools.vscode-docker octref.vetur felixfbecker.php-intellisense redhat.vscode-yaml golang.Go ms-vscode.PowerShell vsciot-vscode.vscode-arduino ms-kubernetes-tools.vscode-kubernetes-tools Dart-Code.flutter rebornix.Ruby redhat.vscode-xml rust-lang.rust"
for E in $VSCEXT
do
	code --install-extension $E
done
echo '
{
	"window.zoomLevel": 0,
	"editor.wordWrap": "on"
}
' > ~/.config/Code/User/settings.json
sudo chmod +rw /home/$USER/.config/Code/User/settings.json