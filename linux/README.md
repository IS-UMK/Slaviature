
# Slaviature — Debian/Linux (XKB)

[![View on GitHub](https://img.shields.io/badge/View%20on%20GitHub-f2f2f2?style=for-the-badge&logo=github&logoColor=303030&color=f2f2f2)](https://github.com/IS-UMK/Slaviature/blob/master/linux/)

**Slaviature** allows for quick input of characters from the Slavistic Phonetic
Alphabet in Debian/Linux environments using XKB (*X Keyboard Extension*).

## Installation

Navigate to the local folder where you cloned/download this repository, then copy the `slav` file from:
- `linux/usr/share/X11/xkb/symbols/`

to the system folder:
- `/usr/share/X11/xkb/symbols/`

You can do this using the following command (root privileges required):

```bash
sudo cp linux/usr/share/X11/xkb/symbols/slav \
    /usr/share/X11/xkb/symbols/
```

## Usage with *setxkbmap*

1. Check your currently set keyboard layout:

   ```bash
   setxkbmap -query
   ```

   Example output for the default English (US) layout 'us':

   ```conf
   rules:      evdev
   model:      pc105
   layout:     us
   ```
   There might be two additional fields in the output: variant and options.
   In this case, they are not displayed because they are empty.

2. Enable Slaviature:

   ```bash
   setxkbmap slav
   ```
3. You can switch back to your previously set layout with:

   ```bash
   setxkbmap us
   ```

4. To make it easier to use both your default layout and Slaviature, you can
   configure both at once and assign a keyboard shortcut (e.g., Win + Space) for
   switching between them:

   ```bash
   setxkbmap -layout "us,slav" -option "grp:win_space_toggle"
   ```

   To see other available shortcuts, run:

   ```bash
   grep 'grp.*toggle' /usr/share/X11/xkb/rules/base.lst
   ```

5. The keyboard layout toggle option using *setxkbmap* with the `-option` flag
   may not work correctly under GNOME.  In such a case, add the following entry
   to the *base.extras.xml* and *evdev.extras.xml* files located in
   `/usr/share/X11/xkb/rules/`:
	   
   ```xml
   <layout>
     <configItem popularity="exotic">
	   <name>slav</name>
	   <!-- Keyboard indicator for Slavistic Phonetic Alphabet layouts -->
	   <shortDescription>slav</shortDescription>
	   <description>Slavistic Phonetic Alphabet — Slawiatura</description>
     </configItem>
   </layout>
   ```

	Then configure the keyboard in “Settings” → “Region & Language” → “Input
    Sources”. To add the new layout, click the “+” button and select or search
    for “slav”.

	This repository also includes versions of these files with the configuration
    already added, so you can check how the entries have been inserted there.

## Additional option

You can also use the *changeLayout.sh* script available in this repository.
Simply place it, for example, in `/usr/local/bin`, grant it executable
permissions, and assign it to a convenient keyboard shortcut in your system.
This script allows you to quickly switch between predefined keyboard layouts
without manually using setxkbmap or accessing system settings.
