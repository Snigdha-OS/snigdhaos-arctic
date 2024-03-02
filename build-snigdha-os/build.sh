#!/bin/bash

#exit on error [immidiate]
set -e

# Author : Eshan Roy <eshan@snigdhaos.org>
# Author URL : https://eshanized.github.io/

echo
echo "*********************************************************************************"
tput setaf 2
echo "STEP: 1 "
echo "SETTING GLOBAL PARAMS : "
tput sgr0
echo "*********************************************************************************"
echo

    # Set the Environment here ->
    desktop="gnome"
    dmDesktop="gdm"

    snigdhaosVersion='v5.0'
    build='arctic'
    isoLabel='snigdhaos-'$build'-'$snigdhaosVersion'-x86_64.iso'

    # Necessary Parameters
    requiredArchisoVersion="archiso 75-1"
    buildFolder=$HOME"/snigdhaos-build"
    outputFolder=$HOME"/snigdhaos-output"
    archisoVersion=$(sudo pacman -Q archiso)

    # Setup for Aur
    chaoticaur=true
    blackarchaur=false
    personalrepo=false

    echo "*********************************************************************************"
    echo "Building Desktop"$desktop
    echo "Building Version"

