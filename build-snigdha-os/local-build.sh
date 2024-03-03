#!/bin/bash

# exit on error [immidiate]
# set -e

# Author : Eshan Roy <eshan@snigdhaos.org>
# Author URL : https://eshanized.github.io/

echo
echo "ooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooo"
tput setaf 2
echo "STEP 1 : "
echo "-> Setting General Parameters"
tput sgr0
echo "ooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooo"
echo

    desktop="gnome"
    dmDesktop="gnome"
    snigdhaosVersion="v5.0"
    build="arctic"
    isoLabel='snigdhaos-'$build'-'$snigdhaosVersion'-x86_64.iso'

    # general params setup
    requiredArchisoVersion="archiso 75-1"
    buildFolder="/snigdhaos-build"
    outputFolder="/snigdhaos-output"
    archisoVersion=$(sudo pacman -Q archiso)

    # Skiping repos, we will add later on

    echo "ooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooo"
    echo "Building Desktop                  :   "$desktop
    echo "Snigdha OS Build                  :   "$build
    echo "Building Version                  :   "$snigdhaosVersion
    echo "ISO Label                         :   "$isoLabel
    echo "Current Archiso Version           :   "$archisoVersion
    echo "Rquired Archiso Version           :   "$requiredArchisoVersion
    echo "Building Folder                   :   "$buildFolder
    echo "Output Folder                     :   "$outputFolder
    echo "ooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooo"
echo