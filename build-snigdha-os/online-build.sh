#!/bin/bash

# exit on error [immidiate]
# set -e

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
    dmDesktop="gnome"

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
    echo "Building Desktop "$desktop
    echo "Building Version "$snigdhaosVersion
    echo "ISO Label "$isoLabel
    echo "Checking Current Archiso Version "$archisoVersion
    echo "Required Version "$requiredArchisoVersion
    echo "Build Folder "$buildFolder
    echo "Output Folder "$outputFolder
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
echo "- Installing Archiso"
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
    sudo sed -i "s/\(^archiso-version=\).*/\1$archisoVersion/" ../archiso.readme
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
    wget https://raw.githubusercontent.com/Snigdha-OS/snigdhaos-roots/master/.bashrc -O $buildFolder/archiso/airootfs/etc/skel/.bashrc
    echo
    echo "Removing old packages.x86_64 from build folder..."
    rm $buildFolder/archiso/packages.x86_64
    echo "Removing Personal Packages..."
    rm $buildFolder/archiso/personal-packages.x86_64
    echo
    echo "Copying the latest packages.x86_64..."
    cp -f ../archiso/packages.x86_64 $buildFolder/archiso/packages.x86_64
    echo 

    if [ $personalrepo == true ]; then
        echo "Adding Packages From Personal Repository..."
        printf "\n" | sudo tee -a $buildFolder/archiso/packages.x86_64
        cat ../archiso/personal-packages.x86_64 | sudo tee -a $buildFolder/archiso/personal-packages.x86_64
    fi

    if [ $personalrepo == true ]; then
        echo "Adding snigdhaos-personal repo /etc/pacman.conf"
        printf "\n" | sudo tee -a $buildFolder/archiso/pacman.conf
        printf "\n" | sudo tee -a $buildFolder/archiso/airootfs/etc/pacman.conf
        cat snigdhaos-personal | sudo tee -a $buildFolder/archiso/pacman.conf
        cat snigdhaos-personal | sudo tee -a $buildFolder/archiso/airootfs/etc/pacman.conf
    fi

    if [ $chaoticaur == true ]; then
        echo "Adding chaotc-AUR to etc/pacman.conf..."
        printf "\n" | sudo tee -a $buildFolder/archiso/pacman.conf
        printf "\n" | sudo tee -a $buildFolder/archiso/airootfs/etc/pacman.conf
        cat chaotic-aur | sudo tee -a $buildFolder/archiso/pacman.conf
        cat chaotic-aur | sudo tee -a $buildFolder/archiso/airootfs/etc/pacman.conf
    fi

    if [ $blackarchaur == true ]; then
        echo "Adding blackarch-AUR to etc/pacman.conf..."
        printf "\n" | sudo tee -a $buildFolder/archiso/pacman.conf
        printf "\n" | sudo tee -a $buildFolder/archiso/airootfs/etc/pacman.conf
        cat blackarch | sudo tee -a $buildFolder/archiso/pacman.conf
        cat blackarch | sudo tee -a $buildFolder/archiso/airootfs/etc/pacman.conf
    fi

    echo
    echo "Adding content from personal folder..."
    echo
    cp -rf ../personal/ $buildFolder/archiso/airootfs/

    if test -f $buildFolder/archiso/airootfs/personal/.gitkeep; then
        echo
        rm $buildFolder/archiso/airootfs/personal/.gitkeep
        echo ".gitkeep removed!"
        echo
    fi

echo
echo "*********************************************************************************"
tput setaf 3
echo "STEP 5 : "
echo "- Changing All Refernces"
echo "- Adding time to /etc/dev-rel"
tput sgr0
echo "*********************************************************************************"
echo

    # Let's set some variables
    # I am retrieving information from profiledef.sh

    # profiledef.sh
    oldname1='iso_name="snigdhaos-arctic"'
    newname1='iso_name="snigdhaos-arctic"'

    oldname2='iso_name="snigdhaos-arctic"'
    newname2='iso_name="snigdhaos-arctic"'

    oldname3='Snigdha OS'
    newname3='Snigdha OS'

    # Hostname
    oldname4='Snigdha OS'
    newname4='Snigdha OS'

    echo "Changing All References..."
    echo
    sed -i 's/'$oldname1'/'$newname1'/g' $buildFolder/archiso/profiledef.sh
    sed -i 's/'$oldname2'/'$newname2'/g' $buildFolder/archiso/profiledef.sh
    sed -i 's/'$oldname3'/'$newname3'/g' $buildFolder/archiso/airootfs/etc/dev-rel
    sed -i 's/'$oldname4'/'$newname4'/g' $buildFolder/archiso/airootfs/etc/hostname

    echo "Adding time to /etc/dev-rel"
    buildDate=$(date -d now)
    echo "ISO Build Date: "$buildDate
    sudo sed -i "s/\(^ISO_BUILD=\).*/\1$buildDate/" $buildFolder/archiso/airootfs/etc/dev-rel

echo
echo "*********************************************************************************"
tput setaf 2
echo "STEP 6 : "
echo "- Cleaning Cache"
tput sgr0
echo "*********************************************************************************"
echo

    echo "Cleaning cache..."
    yes | sudo pacman -Scc

echo
echo "*********************************************************************************"
tput setaf 2
echo "STEP 7 : "
echo "- Building ISO. It will take time..."
tput sgr0
echo "*********************************************************************************"
echo

    [ -d $buildFolder ] || mkdir $outputFolder
    cd $buildFolder/archiso/
    sudo mkarchiso -v -w $buildFolder -o $outputFolder $buildFolder/archiso/

echo
echo "*********************************************************************************"
tput setaf 2
echo "STEP 8 : "
echo "- Creating checksums"
echo "- Copying pkglist"
tput sgr0
echo "*********************************************************************************"
echo

    cd $outputFolder
    echo "Creating Checksums: "$isoLabel
    echo "*********************************************************************************"
    echo
    echo "sha1sum..."
    sha1sum $isoLabel | tee $isoLabel.sha1
    echo "--------------------------------"
    echo "Sha256Sum..."
    Sha256Sum $isoLabel | tee $isoLabel.sha256
    echo "--------------------------------"
    echo "md5sum...."
    md5sum $isoLabel | tee $isoLabel.md5
    echo 
    echo "Copying pkglist..."
    cp $buildFolder/iso/arch/pkglist.x86_64.txt $outputFolder/$isoLabel".pkglist.txt"
echo
echo "*********************************************************************************"
tput setaf 2
echo "FINAL STEP : "
echo "Check a few things"
tput sgr0
echo "*********************************************************************************"
echo
    echo "Deleting previous build folder..."
    [ -d $buildFolder ] && sudo rm -rf $buildFolder
echo
echo "*********************************************************************************"
tput setaf 2
echo "DONE!!!!!!"
echo "Check output folder: "$outputFolder
tput sgr0
echo "*********************************************************************************"
echo