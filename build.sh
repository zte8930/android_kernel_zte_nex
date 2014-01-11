#!/bin/bash
echo "Starting build..."
sleep 2
clear
sh fs.sh
clear
set -e
PS3='Please enter your choice: '
options=("Awe" "Warp 4G" "Source" "Force" "Warp" "Quit")
select opt in "${options[@]}"
do
    case $opt in
        "Awe")
            echo "Selecting: ZTE Awe";
            make clean;
	    make msm8960-nex_defconfig;
	    export DEVICE=nex;
            make zImage;
            break ;;
        "Warp 4G")
            echo "Selecting: ZTE Warp 4G";
	    make clean;
            make msm8960-warplte_defconfig;
	    export DEVICE=warplte;
            make zImage;
            break ;;
        "Source")
            echo "Selecting: ZTE Source";
            make clean;
	    make msm8960-hera_defconfig;
	    export DEVICE=hera
	    make zImage;
            break ;;
        "Force")
            echo "Selecting: ZTE Force";
	    make clean;
            make msm8960-hayes_defconfig;
	    export DEVICE=hayes;
	    make zImage;
            break ;;
        "OG Warp")
            echo "Selecting: ZTE Warp (n860)";
	    make clean;
	    make msm7x30-arthur_defconfig;
	    export DEVICE=arthur;
	    make zImage;
            break ;;
        "Quit")
            exit;;
        *) echo invalid option;;
    esac
done

if [ -e arch/arm/boot/zImage ];
then echo "（ ^_^）o自自o（^_^ ）"
mkdir bin/ -p
cp arch/arm/boot/zImage bin/
echo "Kernel is can be found:"
echo "$(find . -name 'zImage')"
else
echo "Oops...something went wrong"
echo "¯\_(ツ)_/¯"
fi

