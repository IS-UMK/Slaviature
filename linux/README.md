
# Slaviature — Debian/Linux (XKB)

[🇵🇱 Polish version](pl/README.md)

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
   configure both at once and assign a keyboard shortcut (e.g., Left Alt +
   Left Shift) for switching between them:

   ```bash
   setxkbmap -layout "us,slav" -option "grp:lalt_lshift_toggle"
   ```

   To see other available shortcuts, run:

   ```bash
   grep 'grp.*toggle' /usr/share/X11/xkb/rules/base.lst
   ```

5. The keyboard layout toggle option using *setxkbmap* with the `-option` flag may
   not work correctly under GNOME. In this case, you can use the script
   *changeLayout.sh*, place it, for example, in `/usr/local/bin`, and assign a
   convenient keyboard shortcut to it.

## Additional options and configuration

If you're using a different tool than setxkbmap, such as a graphical layout
manager, you can modify the files *base.lst, base.xml, evdev.lst, evdev.xml* in
your system directory `/usr/share/X11/xkb/rules`, adding an entry for
Slaviature. This repository also contains versions of these files with the
Slaviature configuration already added, so you can check how it was done
there. Below are example excerpts from those files:

base.lst i evdev.lst:
```conf
! layout
sk              Slovak
slav            Slavistic Phonetic Alphabet
es              Spanish
```
  
base.xml i evdev.xml:
```xml
   <layout>
    <configItem>
      <name>slav</name>
      <!-- Keyboard indicator for Slavistic Phonetic Alphabet layouts -->
      <shortDescription>slav</shortDescription>
      <description>Slavistic Phonetic Alphabet - Slawiatura</description>
      <languageList/>
    </configItem>
    <variantList/>
  </layout>
```
