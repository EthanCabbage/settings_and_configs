# Settings and Configs
Various settings and config files for software I use a lot.

_In this readme, square brackets `[]` indicate a keypress, angled brackets `<>` indicate one of the given options as a keypress, and plain text indicates the given string._

## Sublime Text
I use the "Bittersweet" color theme through the Colorsublime plugin and the Numix Dark Light Blue window theme, and I have set the sidebar tree and the window tabs to the "small" setting. This keeps the window simple, clutter-free, and easy on the eyes.
### Packages
- AutoHotkey  --  _syntax for `.ahk` files_
- Colorsublime  --  _package for installing color themes_
- Numix Theme  --  _minimalistic window theme_
- Package Control  --  _full-featured package manager_
- TodoReview  --  _package for gathering and viewing `TODO` (and other) comments_
- VAlign  --  _align `=` and `:` symbols on adjacent rows_
### Keymap
- `[Shift]+[Enter]`: Add newline below without breaking current line.
- `[Ctrl]+[Enter]`: Add newline above without breaking current line.
- `[Ctrl]+[Tab]`: View next window tab.
- `[Ctrl]+[Shift]+[Tab]`: View previous window tab.
- `[Ctrl]+[PageDown]`: View next window tab in stack.
- `[Ctrl]+[PageUp]`: View previous window tab in stack.
- `[Ctrl]+[Shift]+[\]`: Reindent selection (reindent file if nothing is selected).

## AutoHotkey
I use AutoHotkey on Windows 10, so some of the shortcuts and hotkeys are Windows-specific.
### Passive Controls
NumLock is always on, ScrollLock and CapsLock are always off, and those keys are disabled (CapsLock can be toggled on by pressing `Win+CapsLock`). There will be no tray icon for this AutoHotkey process, and it can be started with Windows by putting it into the `C:\Users\<username>\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Startup` folder.
### Hotkeys and Shortcuts
- `[CapsLock]+<HJKL>`: Arrow keys, VIM-style.
- `[CapsLock]+<YUIOP>`: Delete, Home, End, Ctrl+Home, Ctrl+End.
- `[Win]+[CapsLock]`: CapsLock.
- `[CapsLock]+[mouse click and drag]`: Drag window without needing to click the top bar.
- `[mouse right click and hold]+[mouse scroll wheel]`: Switch windows, ala Alt+Tab.
- `[Ctrl]+[Shift]+<0-9>`: Fill specified email.
- `[Ctrl]+[Alt]+[R]`: Reload any changes made to the AutoHotkey script.
- `[Ctrl]+[Alt]+[T]`: Open Bash on Ubuntu on Windows.
- `[Ctrl]+[Space]`: Keep focused window on top. Repeat hotkey to undo always-on-top.
- `myadd`: Fill specified address.
- `myphone`: Fill specified phone number (e.g. 1112223333).
- `Myphone`: Fill specified formatted phone number (e.g. (111) 222-3333).

## Bash

### Aliases
- `gs`: `git status`
- `gd`: `git diff`
- `ga`: `git add`
- `gc`: `git commit -m`
- `gp`: `git push`
- `gpp`: `git pull`
- `py`: `python`
- `ll`: `ls -alG`
- `ls`: `ls -G`
- `..`: `cd ..`
- `home`: `cd ~`
- `use <virtualenv_name>`: `. <virtualenv_name>/bin/activate`
### Passive Settings
The main PS1 input line is set to the following colors and text to allow for easy reading and quick information gathering (the brackets shown here are literal brackets shown in the PS1 input line):
```
[bright_green_username bright_yellow_@ bright_green_host][bright_blue_working_directory] (bright_blue_git_branch_status) bright_blue_$
```
For example, here are PS1 lines both inside and outside a git directory:
```
[ecabbage@home_desktop][~/Documents/Git/settings_and_configs] (master=)$ 
[ecabbage@home_desktop][~/Documents] $ 
```
Colors shown during the `ls` command have also been changed to avoid using dark blue text on a black background, and will instead show all text in white.
### VIM
The VIM color scheme has been changed to `koehler`, which avoids using dark blue text on a black background.
