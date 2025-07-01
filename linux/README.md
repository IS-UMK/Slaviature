
# About Slaviature — Debian/Linux (XKB)

The Slawiatura keyboard layout allows for quick entry of Slavistic Phonetic
Alphabet characters in a Debian/Linux environment as a variant of XKB.

## Installation

Copy the file `slav` from: 
- `linux/slav_1.0_all/usr/share/X11/xkb/symbols/` 

to the system directory:
- `/usr/share/X11/xkb/symbols/`

You can do this using the following command (root privileges required):

```bash
sudo cp Slaviature/linux/slav_1.0_all/usr/share/X11/xkb/symbols/slav \
	 /usr/share/X11/xkb/symbols/
```

## How to enable

1. Using the setxkbmap command:

```bash
setxkbmap slav
```

2. To facilitate switching between layouts, you can use the provided script:

```bash
./ChangeLayout.sh
```

## Additional options and configuration
- If you use a tool other than `setxkbmap`, such as a graphical layout manager,
  you may need to install or modify files in the `rules/` folder.

- The files in `rules/` contain XKB rules compliant with system standards.

- For global or persistent changes, these files should be properly installed in
  `/usr/share/X11/xkb/` or in your home directory.
