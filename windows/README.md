
# About Slaviature — Windows (AutoHotkey)

[![en](https://img.shields.io/badge/lang-en-blue.svg)](https://github.com/IS-UMK/Slaviature/blob/master/windows/README.md)
[![pl](https://img.shields.io/badge/lang-pl-red.svg)](https://github.com/IS-UMK/Slaviature/blob/master/windows/README_pl.md)

**Slaviature.exe** is a background application keyboard layout designed to work
alongside the default Windows layout **Polish (Programmers)**. It enables easy
typing of the Slavic Phonetic Alphabet characters without changing the system
keyboard layout.

## How to start

1. Launch **Slaviature.exe** by:
   - Double-clicking the left mouse button
   - Or right-clicking once and selecting **Open**

2. After launching, the application icon will appear in the taskbar. The taskbar
   is usually located in the lower right corner of the screen, near the volume,
   network, battery, and clock icons.

3. If Windows hides the icon, click the **Show hidden icons** arrow:

## Available options

To access options:

- Right-click the application icon in the taskbar (or in the hidden icons area).

Options available:

- **Suspend Hotkeys** — suspends the application, allowing you to type Polish system characters without turning off Slaviature.
- **Pause Script** — an option automatically created by the AutoHotkey compiler; it does not affect Slaviature operation and can be ignored.
- **Exit** — terminates the background application.

## How to compile your own EXE

1. Download and install [AutoHotkey](https://www.autohotkey.com/).
2. Right-click on the `Slaviature.ahk` script and select **Compile Script**.
3. This will create `Slaviature.exe` which runs identically to the provided version.

## Folder contents

- `Slaviature.ahk` — AutoHotkey script defining the keyboard layout.
- `Slaviature.exe` — compiled background application executable.
