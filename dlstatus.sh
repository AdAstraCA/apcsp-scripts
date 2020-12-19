#!/bin/bash
# fileinfo

DROPLETS="dl01 dl02 dl03 dl04 dl05 dl06 dl07 dl08 dl09 dl10 dl11 dl12 dl13 dl14 dl15 dl16 dl17 dl18 dl19 dl20"

for droplet in $DROPLETS ; do
     PART1="$droplet"
     PART2=" is"
     ping -c 1 -q $droplet 2>&1 >/dev/null
     if [ $? -eq 0 ] ; then
        PART3=" alive"
        FULL="$PART1$PART2$PART3"
        echo "$FULL"
     else
        PART3=" dead"
        FULL="$PART1$PART2$PART3"
        echo "$FULL"
     fi

done

exit 0
