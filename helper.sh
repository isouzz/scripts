
#!/bin/bash

# Colorize and add text parameters
red=$(tput setaf 1)             #  red
grn=$(tput setaf 2)             #  green
blu=$(tput setaf 4)             #  blue
txtbld=$(tput bold)             #  bold
bldred=${txtbld}$(tput setaf 1) #  bold red
bldgrn=${txtbld}$(tput setaf 2) #  bold green
bldblu=${txtbld}$(tput setaf 4) #  bold blue
ylw="\033[01;33m"               #  bold yellow
txtrst=$(tput sgr0)             #  reset

# clear terminal
clear

# Start tracking time
echo -e ${bldblu}
echo -e "---------------------------------------"
echo -e "SCRIPT STARTING AT $(date +"%d/%m/%Y"\ %R)"
echo -e "---------------------------------------"
echo -e ${txtrst}

function topic() {
repopick -t eleven-build
repopick -t eleven-build-bringup
repopick -t eleven-build-warnings
repopick -t eleven-sdk-bringup
}

function pick() {
repopick 286846 -P hardware/qcom/audio
repopick 286695 -P device/lineage/sepolicy
repopick 286447 -P frameworks/av
repopick 286170 -P frameworks/av
repopick 286171 -P frameworks/av
repopick 286901 -P hardware/qcom-caf/sm8150/audio/
}

echo -e ${ylw}
echo -e "---------------------------------------"
echo -e "Topic Run"
echo -e "---------------------------------------"
echo -e ${txtrst}
topic

echo -e ${ykw}
echo -e "---------------------------------------"
echo -e "Pick Run"
echo -e "---------------------------------------"
echo -e ${txtrst}
pick

# Stop tracking time
echo -e ${bldblu}
echo -e "-------------------------------------"
echo -e "SCRIPT ENDING AT $(date +"%d/%m/%Y"\ %R)"
echo -e "-------------------------------------"
echo -e ${txtrst}
