#NoTrayIcon
#Persistent
#SingleInstance force
SetCapsLockState, AlwaysOff
SetNumLockState, AlwaysOn
SetScrollLockState, AlwaysOff


; ==============================
;       Reload AutoHotkey
; ==============================
^!r::
    Reload
Return


; ==============================
;        Caps Lock -> VIM
; ==============================
#Capslock::Capslock

; Capslock + jkli (left, down, up, right)
Capslock & j::Send {Blind}{Down DownTemp}
Capslock & j up::Send {Blind}{Down Up}

Capslock & k::Send {Blind}{Up DownTemp}
Capslock & k up::Send {Blind}{Up Up}

Capslock & h::Send {Blind}{Left DownTemp}
Capslock & h up::Send {Blind}{Left Up}

Capslock & l::Send {Blind}{Right DownTemp}
Capslock & l up::Send {Blind}{Right Up}

; Capslock + yuiop (BackSpace, Home, End, Delete)
Capslock & y::Send {Blind}{BackSpace DownTemp}
Capslock & y up::Send {Blind}{BackSpace Up}

Capslock & u::Send {Blind}{Home DownTemp}
Capslock & u up::Send {Blind}{Home Up}

Capslock & i::Send {Blind}{End DownTemp}
Capslock & i up::Send {Blind}{End Up}

Capslock & o::Send {Blind}{Delete DownTemp}
Capslock & o up::Send {Blind}{Delete Up}


; ==============================
;   Change default comm device
; ==============================
Capslock & [::
    Run, mmsys.cpl
    WinWait,Sound
    ControlSend,SysListView321,{Down 1}
    ControlGet, isEnabled, Enabled,,&Set Default
    if(!isEnabled)
    {
      ControlSend,SysListView321,{Down 1}
    }
    ControlClick,&Set Default
    ControlClick,OK
    WinWaitClose
    SoundPlay, *-1
Return

Capslock & ]::
    Run, mmsys.cpl
    WinWait,Sound
    ControlSend,SysListView321,{Down 2}
    ControlGet, isEnabled, Enabled,,&Set Default
    if(!isEnabled)
    {
      ControlSend,SysListView321,{Down 2}
    }
    ControlClick,&Set Default
    ControlClick,OK
    WinWaitClose
    SoundPlay, *-1
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


; ==============================
;         MISCELLANEOUS
; ==============================

; Alt+Space -> Windows Key
!Space::Send ^{Esc}
