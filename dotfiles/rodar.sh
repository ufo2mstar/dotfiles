#!/bin/bash
set -euo pipefail

echo This script will install Rodar.
echo
echo ----------------------------------------------------------------------
echo "    Press ENTER to continue, or Ctrl-C to abort now."
echo ----------------------------------------------------------------------
read

rodar_pkg=$HOME/.rodar/pkg
rodar_bin=$HOME/.rodar/bin
if [[ -d $rodar_pkg ]]; then
    rm -rf $rodar_pkg
fi
git clone ssh://git.amazon.com:2222/pkg/Rodar $rodar_pkg
mkdir -p $rodar_bin

if [[ ! -f $rodar_bin/rod ]]; then
    ln -s $rodar_pkg/rod $rodar_bin
fi

echo
echo Cloning done! Only one more step to go!
echo
echo ----------------------------------------------------------------------
echo "    Please add '~/.rodar/bin' to your PATH"
echo ----------------------------------------------------------------------
echo
echo "Please edit your .bashrc (or equivalent) and add the following to the end:"
echo
echo "    export PATH=~/.rodar/bin:\$PATH"
echo
echo "Then restart your shell."