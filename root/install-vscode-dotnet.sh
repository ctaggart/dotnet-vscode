#!/bin/sh
dir=$(cd `dirname "$0"` && pwd)
# publisher extension version
# https://marketplace.visualstudio.com/items?itemName=Ionide.Ionide-fsharp
$dir/install-vscode-extension.sh Ionide Ionide-fsharp 1.7.0
# https://marketplace.visualstudio.com/items?itemName=Ionide.Ionide-Paket
$dir/install-vscode-extension.sh Ionide Ionide-Paket 1.1.1
# https://marketplace.visualstudio.com/items?itemName=Ionide.Ionide-FAKE
$dir/install-vscode-extension.sh Ionide Ionide-FAKE 1.0.11
# https://marketplace.visualstudio.com/items?itemName=ms-vscode.csharp
$dir/install-vscode-extension.sh ms-vscode csharp 1.0.11