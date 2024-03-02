#!/bin/bash

#exit on error [immidiate]
set -e

# Author : Eshan Roy <eshan@snigdhaos.org>
# Author URL : https://eshanized.github.io/

echo
echo "*********************************************************************************"
tput setaf 2
echo "STEP 1 : "
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
    chaoticaur=false
    blackarchaur=false
    personalrepo=false

    echo "*********************************************************************************"
    echo "Building Desktop"$desktop
    echo "Building Version"$snigdhaosVersion
    echo "ISO Label"$isoLabel
    echo "Checking Current Archiso Version"$archisoVersion
    echo "Required Version"$requiredArchisoVersion
    echo "Build Folder"$buildFolder
    echo "Output Folder"$outputFolder
    echo "*********************************************************************************"

    # Let's download archiso if not installed!
    if [ "$archisoVersion" == "$requiredArchisoVersion" ]; then
        tput setaf 2
        echo "*********************************************************************************"
        echo "Archiso Required Version is already installed"
        echo "*********************************************************************************"
        tput sgr0
    
    else
    tput setaf 1
    echo "*********************************************************************************"
    echo "Required Archiso Version Not Found!"
    echo "*********************************************************************************"
    tput sgr0
    fi

echo
echo "*********************************************************************************"
tput setaf 2
echo "STEP 2 : "
echo "- Checking whether Archiso is installed or not!"
echo "- Saving Latest Archiso Version to readme!"
echo "- Making Archiso verbose!"
tput sgr0
echo "*********************************************************************************"
echo

    package="archiso"
    # I am not going to install via any helpers
    if pacman -Qi $package &> /dev/null; then
        echo "Archiso is already installed!"
    else
        if pacman -Qi yay &> /dev/null;then
            echo "*********************************************************************************"
            echo "Installing Archiso via YAY"
            echo "*********************************************************************************"
            yay -S --noconfirm $package
        elif pacman -Qi trizen &> /dev/null;then
            echo "*********************************************************************************"
            echo "Installing Archiso Via Trizen"
            echo "*********************************************************************************"
            trizen -S --noconfirm --needed --noedit $package
        elif pacman -Qi paru &> /dev/null;then
            echo "*********************************************************************************"
            echo "Installing Archison Via Paru"
            echo "*********************************************************************************"
            paru -S --noconfirm $package
        fi

        # Let's check whether the installation is successfull or not!
        if pacman -Qi $package &> /dev/null; then
            echo "*********************************************************************************"
            echo $package "installation was successfull."
            echo "*********************************************************************************"
        else
            echo "!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!"
            echo $package "not installed successfully. Exiting..."
            echo "!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!"
            exit 1
        fi
    fi

    echo 
    echo "Saving Downloaded archiso version to readme..."
    sudo sed -i "s/\(^archiso-version=\).*/\1 $archisoVersion/" ../archiso.readme
    echo
    echo "Making Archiso Verbose"
    sudo sed -i 's/quiet="y"/quiet="n"/g' /usr/bin/mkarchiso

echo
echo "*********************************************************************************"
tput setaf 2
echo "STEP 3 : "
echo "- Deleting Any Previous Build Folder if exists!"
echo "- Copying Archiso to build folder..."
tput sgr0
echo "*********************************************************************************"
echo

    echo "Deleting Previous Build Folder..."
    [ -d $buildFolder ] && sudo rm -rf $buildFolder
    echo
    echo "Copying Archiso to Work Directory..."
    echo
    mkdir $buildFolder
    cp -r ../archiso $buildFolder/archiso
echo
echo "*********************************************************************************"
tput setaf 2
echo "STEP 4 : "
echo "- Deleting files in /etc/skel"
echo "- Downloading Latest .bashrc from Snigdha-OS/snigdhaos-root"
echo "- Removing old packages.x86_64 from build folder..."
echo "- Copying new packages.x86_64 to build folder..."
echo "- Adding Personal Repo and Personal Packages!"
tput sgr0
echo "*********************************************************************************"
echo

    echo "Deleting existing files in /etc/skel"
    rm -rf $buildFolder/archiso/airootfs/etc/skel/. * 2> /dev/null
    echo
    echo "Downloading Latest .bashrc from Snigdha-OS/snigdhaos-root"
    echo
    wget 