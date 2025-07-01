#!/bin/bash

if [ ! -d ~/slawiatura ]; then
    mkdir ~/slawiatura
fi

if [ ! -f ~/slawiatura/keyLayoutInfo ]; then
    touch ~/slawiatura/keyLayoutInfo
fi

isSlav=`setxkbmap -query | grep slav`

if [ "$isSlav" = "" ]; then
    setxkbmap -query | grep layout | awk '{print $2}' > ~/slawiatura/keyLayoutInfo
    setxkbmap slav
else
    info=`cat ~/slawiatura/keyLayoutInfo`
    setxkbmap $info
fi
