
#!/bin/bash

# Colorize and add text parameters
red=$(tput setaf 1)             #  red
grn=$(tput setaf 2)             #  green
blu=$(tput setaf 4)             #  blue
txtbld=$(tput bold)             #  bold
bldred=${txtbld}$(tput setaf 1) #  bold red
bldgrn=${txtbld}$(tput setaf 2) #  bold green
bldblu=${txtbld}$(tput setaf 4) #  bold blue
txtrst=$(tput sgr0)             #  reset

export USE_CCACHE=1
export CCACHE_EXEC=/usr/bin/ccache

# clear terminal
clear

# Start tracking time
echo -e ${bldblu}
echo -e "---------------------------------------"
echo -e "SCRIPT STARTING AT $(date +"%d/%m/%Y"\ %R)"
echo -e "---------------------------------------"
echo -e ${txtrst}

source build/envsetup.sh
breakfast cepheus
make installclean
croot
brunch cepheus

# Stop tracking time
echo -e ${bldblu}
echo -e "-------------------------------------"
echo -e "SCRIPT ENDING AT $(date +"%d/%m/%Y"\ %R)"
echo -e "-------------------------------------"
echo -e ${txtrst}
