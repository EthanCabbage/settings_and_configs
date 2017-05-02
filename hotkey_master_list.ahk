#NoTrayIcon
#Persistent
#SingleInstance force
SetCapsLockState, AlwaysOff
SetNumLockState, AlwaysOn
SetScrollLockState, AlwaysOff


; ==============================
;       Temporary Hotkeys
; ==============================
; Place any quick, temporary hotkeys here


; ==============================
;       Reload AutoHotkey
; ==============================
^!r::
    Reload
Return


; ==============================
;        Email expansion
; ==============================
^+1::
    Send, [email 1]
Return

^+2::
    Send, [email 2]
Return

^+3::
    Send, [email 3]
Return

^+4::
    Send, [email 4]
Return


; ==============================
;         Text expansion
; ==============================
:*:myadd::[address]
Return

:c*:myphone::[phone number, no spaces]
Return

:c*:Myphone::[formatted phone number]
Return

::teh::the
Return
::hte::the
Return


; ==============================
;        Launch programs
; ==============================
^!t::Run "C:\Users\ecabbage\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Bash on Ubuntu on Windows.lnk"
Return


; ==============================
;         Bash shortcuts
; ==============================
#if, WinActive("ahk_exe bash.exe")
; ------ Django shortcuts ------
:*:csu::pushd [manage.py directory] createsuperuser{enter}
Return
:*:dsh::pushd [manage.py directory] shell{enter}from scriboxapp.models import{space}
Return
:*:msl::export [shell variable for work]
Return
#if

; ==============================
;         Ctrl+V in cmd
; ============================== 
#IfWinActive ahk_class ConsoleWindowClass
^v::
    SendInput {Raw}%clipboard%
Return
#IfWinActive


; ==============================
;        Caps Lock -> VIM
; ==============================
; Holding down the CapsLock key will change the HJKL keys into arrow keys, ala Vim.
; It will change the YUIOP keys into Del/Home/End/Ctrl+Home/Ctrl+End.
; To use original CapsLock functionality, use Win+CapsLock
; Very useful for keeping hands on the homerow.
#Capslock::Capslock

; Capslock + hjkl (left, down, up, right)
Capslock & j::Send {Blind}{Down DownTemp}
Capslock & j up::Send {Blind}{Down Up}
Capslock & k::Send {Blind}{Up DownTemp}
Capslock & k up::Send {Blind}{Up Up}
Capslock & h::Send {Blind}{Left DownTemp}
Capslock & h up::Send {Blind}{Left Up}
Capslock & l::Send {Blind}{Right DownTemp}
Capslock & l up::Send {Blind}{Right Up}

; Capslock + yuiop (Delete, Home, End, Ctrl+Home, Ctrl+End)
Capslock & y::Send {Blind}{Delete DownTemp}
Capslock & y up::Send {Blind}{Delete Up}
Capslock & u::Send {Blind}{Home DownTemp}
Capslock & u up::Send {Blind}{Home Up}
Capslock & i::Send {Blind}{End DownTemp}
Capslock & i up::Send {Blind}{End Up}
Capslock & o::Send {Blind}{Ctrl Down}{Home}{Ctrl Up}
Capslock & p::Send {Blind}{Ctrl Down}{End}{Ctrl Up}


; ==============================
;     Drag Windows Anywhere
; ==============================
Capslock & LButton::
    CoordMode, Mouse  ; Switch to screen/absolute coordinates.
    MouseGetPos, EWD_MouseStartX, EWD_MouseStartY, EWD_MouseWin
    WinGetPos, EWD_OriginalPosX, EWD_OriginalPosY,,, ahk_id %EWD_MouseWin%
    WinGet, EWD_WinState, MinMax, ahk_id %EWD_MouseWin% 
    if EWD_WinState = 0  ; Only if the window isn't maximized 
        SetTimer, EWD_WatchMouse, 10 ; Track the mouse as the user drags it.
    return

    EWD_WatchMouse:
    GetKeyState, EWD_LButtonState, LButton, P
    if EWD_LButtonState = U  ; Button has been released, so drag is complete.
    {
        SetTimer, EWD_WatchMouse, off
        return
    }
    GetKeyState, EWD_EscapeState, Escape, P
    if EWD_EscapeState = D  ; Escape has been pressed, so drag is cancelled.
    {
        SetTimer, EWD_WatchMouse, off
        WinMove, ahk_id %EWD_MouseWin%,, %EWD_OriginalPosX%, %EWD_OriginalPosY%
        return
    }
    ; Otherwise, reposition the window to match the change in mouse coordinates
    ; caused by the user having dragged the mouse:
    CoordMode, Mouse
    MouseGetPos, EWD_MouseX, EWD_MouseY
    WinGetPos, EWD_WinX, EWD_WinY,,, ahk_id %EWD_MouseWin%
    SetWinDelay, -1   ; Makes the below move faster/smoother.
    WinMove, ahk_id %EWD_MouseWin%,, EWD_WinX + EWD_MouseX - EWD_MouseStartX, EWD_WinY + EWD_MouseY - EWD_MouseStartY
    EWD_MouseStartX := EWD_MouseX  ; Update for the next timer-call to this subroutine.
    EWD_MouseStartY := EWD_MouseY
Return


; ==============================
;   Rbutton & Scroll to AltTab
; ==============================
Rbutton::
    Mouseclick, Right
Return

Rbutton & WheelUp::AltTab
Rbutton & WheelDown::ShiftAltTab


; ==============================
;     Toggle Windows On Top
; ==============================
^SPACE::
    Winset, Alwaysontop, , A
Return
