#!/bin/bash

VALUE=0

cin=`echo $XDG_CURRENT_DESKTOP | grep -i "cinnamon"`
gno=`echo $XDG_CURRENT_DESKTOP | grep -i "gnome"`

if [ -n "$cin" ]; then
    VALUE=1
elif [ -n "$gno" ] ; then
    VALUE=2
fi

case $VALUE in
    1)
        info=`dconf read /org/cinnamon/desktop/keybindings/custom-list`
        list=""

        for inf in $info
        do
            x=`echo $inf | cut -d "'" -f2`
            name=`dconf read /org/cinnamon/desktop/keybindings/custom-keybindings/$x/name`
            if [ "$name" = "'keyLayoutChange'" ];then
                dconf reset /org/cinnamon/desktop/keybindings/custom-keybindings/$x/name
                dconf reset /org/cinnamon/desktop/keybindings/custom-keybindings/$x/command
                dconf reset /org/cinnamon/desktop/keybindings/custom-keybindings/$x/binding
            else
                list+=$inf
            fi
        done  

        info=`echo $list | grep "]"`
        if [ -z "$info" ];then
            list=${list::-1}
            list="$list]"
        fi

        dconf write /org/cinnamon/desktop/keybindings/custom-list "$list"
        ;;
    2)
        info=`dconf read /org/gnome/settings-daemon/plugins/media-keys/custom-keybindings`
        list=""

        for inf in $info
        do
            x=`echo $inf | cut -d "/" -f8`
            name=`dconf read /org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/$x/name`
            if [ "$name" = "'keyLayoutChange'" ];then
                dconf reset /org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/$x/name
                dconf reset /org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/$x/command
                dconf reset /org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/$x/binding
            else
                list+=$inf
            fi
        done  

        if [ -z "$list" ]; then
            dconf reset /org/gnome/settings-daemon/plugins/media-keys/custom-keybindings
        else
            info=`echo $list | grep "\["`
            if [ -z "$info" ];then
                list="[$list"
            fi

            info=`echo $list | grep "]"`
            if [ -z "$info" ];then
                list=${list::-1}
                list="$list]"
            fi

            dconf write /org/gnome/settings-daemon/plugins/media-keys/custom-keybindings "$list"
        fi
        ;;
    *)
        ;;
esac
