#SingleInstance Force
#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.

$#n::
	SetTitleMatchMode, RegEx
	DetectHiddenWindows, On
	setcontroldelay, -1
	SetWinDelay, -1
	; close any existing context menus (screws up wait, etc.)
	WinClose, ahk_class #32768
	; open context menu for desktop, if icon at 0,0 (for some rason) change to safe coords
	controlclick, X0 Y0, ahk_class WorkerW,FolderView,RIGHT,,NA, ..*
	; wait, uses class of context menu
	WinWait, ahk_class #32768,,1
	ControlSend ,,n, ahk_class #32768 ; context menu hotkey for next desktop
return
