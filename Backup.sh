#! /bin/bash
# Author: Johnathan C. Knight
# Date of initial project: 2015-04-23 T1810
# Date of last changes with this release: 2015-04-23 T1810
#
# Title: Backup-Home
# ver: 1.0
# Purpose: This is a simple program that will back up your home directory to a backup folder that is hidden to reduce accedental deletion
#
echo 'Once Upon a Time'
#

USER_HOME=$(eval echo ~${SUDO_USER})

rm -rf ${USER_HOME}/.BAK/

mkdir ${USER_HOME}/.BAK/ # Makes a directory named BAK that is hidden

cp -R ${USER_HOME}/Downloads ${USER_HOME}/.BAK/ #copy process from Downloads to .BAK
echo "Back up to downloads directory complete"

cp -R ${USER_HOME}/Documents ${USER_HOME}/.BAK/ #copy process from Documents to .BAK
echo "Backup from Documents directory complete"
