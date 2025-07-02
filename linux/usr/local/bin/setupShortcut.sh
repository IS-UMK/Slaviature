#!/bin/bash

name="'keyLayoutChange'"
command="'bash changeLayout.sh'"
binding="'<Super>Z'"

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
        if [[ -z "$info" || "$info" == "['__dummy__']" ]];then
            dconf write /org/cinnamon/desktop/keybindings/custom-list "['__dummy__','custom0']"
            dconf write /org/cinnamon/desktop/keybindings/custom-keybindings/custom0/name "$name"
            dconf write /org/cinnamon/desktop/keybindings/custom-keybindings/custom0/command "$command"
            dconf write /org/cinnamon/desktop/keybindings/custom-keybindings/custom0/binding "[$binding]"           
        else
            for inf in $info
            do
                value=`echo $inf | grep "]"`
                if [ ! -z "$value" ];then
                    x=`echo $inf | cut -d 'm' -f2`
                    x=`echo $x | cut -d "'" -f1`
                    ((x+=1))
                fi
            done

            y=`echo $info | cut -d ']' -f1`
            y+=", 'custom$x']"
            z="custom$x"
            dconf write /org/cinnamon/desktop/keybindings/custom-list "$y"
            dconf write /org/cinnamon/desktop/keybindings/custom-keybindings/$z/name "$name"
            dconf write /org/cinnamon/desktop/keybindings/custom-keybindings/$z/command "$command"
            dconf write /org/cinnamon/desktop/keybindings/custom-keybindings/$z/binding "[$binding]"
        fi
        ;;
    2)
        info=`dconf read /org/gnome/settings-daemon/plugins/media-keys/custom-keybindings`

        if [[ "$info" = "@as []" ]];then
	        info=''
        fi

        if [ -z "$info" ]; then
            dconf write /org/gnome/settings-daemon/plugins/media-keys/custom-keybindings "['/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom0/']"
            dconf write /org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom0/name "$name"
            dconf write /org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom0/command "$command"
            dconf write /org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom0/binding "$binding"
        else
            for inf in $info
            do
                value=`echo $inf | grep "]"`
                if [ ! -z "$value" ];then
                    x=`echo $inf | cut -d '/' -f8`
                    x=`echo $x | cut -d "m" -f2`
                    ((x+=1))
                fi
            done

            y=`echo $info | cut -d ']' -f1`
            y+=", '/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom$x/']"
            z="custom$x"
            dconf write /org/gnome/settings-daemon/plugins/media-keys/custom-keybindings "$y"
            dconf write /org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/$z/name "$name"
            dconf write /org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/$z/command "$command"
            dconf write /org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/$z/binding "$binding"
        fi
        ;;
    *)
        ;;
esac
