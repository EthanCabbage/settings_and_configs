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

## AutoHotkey (Windows)
I use AutoHotkey on Windows 10, so some of the shortcuts and hotkeys are Windows-specific (macOS instructions follow).
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

## Karabiner and Keyboard Maestro (macOS)
I use a combination of Karabiner Elements and Keyboard Maestro on macOS (Sierra v10.12.6 at the time of writing this) to achieve similar results to using AutoHotkey on Windows.

### Setup
#### macOS Settings
The first thing I do is in the keyboard settings. In **System Preferences -> Keyboard -> Modifier Keys...**, I set the Caps Lock Key to "No Action". Make sure to use the "Select keyboard" dropdown to do this for every keyboard you plan to use.
#### Karabiner Elements
Once the settings are taken care of, install Karabiner Elements. Once it is installed, open `~/.config/karabiner/karabiner.json` and paste in the `karabiner.json` [code](karabiner_elements/karabiner.json) I have stored in this repo. Credit for this goes to Brett Terpstra, and more detailed instructions can be found on his [webpage](http://brettterpstra.com/2017/06/15/a-hyper-key-with-karabiner-elements-full-instructions/). This essentially makes a single click of the Caps Lock key function as an Escape keypress, and a press and hold of the Caps Lock key function as a press and hold of `⌃⌥⇧⌘H`. I then use that unique combination in Keyboard Maestro.
#### Keyboard Maestro
Install and open Keyboard Maestro. In the Global Macro Group, create a new Macro with the [+] button. Add a trigger (hotkey) and press `CapsLock+H`. It should show as "`⌃⌥⇧⌘H` is pressed." Change this to "`⌃⌥⇧⌘H` is down." This will mean that holding down `CapsLock+H` will simulate holding down the Left Arrow key, and the cursor will continue to scroll left as long as the key combination is held. Add a new action and select "Keystroke", then enter a Left Arrow keypress. Follow the same steps to set up `CapsLock+<JKL>` as the other arrow keys, Vim-style. Do the same for `CapsLock+<UI>` for Home (`⌘+LeftArrow`) and End (`⌘+RightArrow`), respectively, but leave the trigger as "is pressed." Following the same basic setup, also create macros for text expansion (**Typed String Trigger** trigger and **Insert Text by Pasting** action) with addresses and phone numbers.

### Hotkeys and Shortcuts
- `[CapsLock]+<HJKL>`: Arrow keys, VIM-style.
- `[CapsLock]+<UI>`: Home, End.
- `[CapsLock]`: Esc.
- `[⌘]+[Shift]+<0-9>`: Fill specified email.
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
