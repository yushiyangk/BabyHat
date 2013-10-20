#NoEnv
;;#NoTrayIcon
#InstallKeybdHook
#SingleInstance force
;;#MaxThreadsBuffer On
;;#MaxThreadsPerHotkey 3
;;#MaxHotkeysPerInterval 300
;;#MaxThreads 20

Process, Priority, , R
SendMode Input
CoordMode, Mouse, Screen
SetKeyDelay, -1, -1

enabled := 1
assist := 1
assistState := 1
state := 0
mode := -1
imgPrefix := ""

#include babyhat_mod.ahk

Menu, Tray, Icon, keyboard.ico,, 1

Gui +AlwaysOnTop -Caption +Disabled -Resize +ToolWindow
Gui, Margin, 0, 0
Gui, Add, Picture, HwndpicId, res/base.png
state := "base"
Gui, Show, NA AutoSize Center, BabyHat Assist
Sysget, gHeight, 17
Sysget, gCaption, 4
areaHeight := gHeight + gCaption
WinGetPos, , , , winHeight, BabyHat Assist
winTop := areaHeight - winHeight
Gui, Show, NA xCenter Y%winTop%

;;Disable on screen display (resource images not updated)
;;Check Pause/Break key
Gui, Hide
assist := 0

OnMessage(0x111,"WM_COMMAND")

#Persistent
	SetTimer, WatchCursor, 120
return

WatchCursor:
	if (WinExist("BabyHat Assist")) {
		MouseGetPos, , mouseY
		WinGetPos,, winY,,, BabyHat Assist
		if (winY < winTop) {
			if (mouseY < areaHeight / 2) {
				WinMove, BabyHat Assist,,, %winTop%
			}
		} else {
			if (mouseY > areaHeight / 2) {
				WinMove, BabyHat Assist,,, 0
			}
		}
	}
return

Pause::
	Suspend, Permit
	Suspend, Toggle
	if (enabled) {
		enabled := 0
		Menu, Tray, Icon, keyboard_x.ico,, 1
		Gui, Hide
	} else {
		enabled := 1
		Menu, Tray, Icon, keyboard.ico,, 1
		if (assist) {
			Gui, Show, NA
		}
	}
return

#F1::
	if (assist) {
		Gui, Hide
		assist := 0
	} else {
		Gui, Show, NA
		assist := 1
	}
return

WM_Command(wP) {
	global assist
	global enabled
	static Suspend := 65305, Pause := 65306
	if (wP = Suspend) {
		if !A_IsSuspended {
			Menu, Tray, Icon, keyboard_x.ico,, 1
			enabled := 0
		} else if A_IsPaused {
			Menu, Tray, Icon, Shell32.dll, 110, 1
			enabled := 0
		} else {
			Menu, Tray, Icon, keyboard.ico,, 1
			enabled := 1
		}
		if (enabled && assist) {
			Gui, Show, NA
		} else {
			Gui, Hide
		}
   } else if (wP = Pause) {
		if !A_IsPaused {
			Menu, Tray, Icon, Shell32.dll, 110, 1
			enabled := 0
		} else if A_IsSuspended {
			Menu, Tray, Icon, keyboard_x.ico,, 1
			enabled := 0
		} else {
			Menu, Tray, Icon, keyboard.ico,, 1
			enabled := 1
		}
		if (enabled && assist) {
			Gui, Show, NA
		} else {
			Gui, Hide
		}
	}
}

~*Escape::
	breakdk()
	prevGlyph := ""
return

~*LButton::
	breakdk()
	prevGlyph := ""
return

~*RButton::
	breakdk()
	prevGlyph := ""
return

~*MButton::
	breakdk()
	prevGlyph := ""
return

~*Backspace::
	breakdk()
	prevGlyph := ""
return

~*Delete::
	breakdk()
	prevGlyph := ""
return

~*Enter::
	breakdk()
	prevGlyph := ""
return

~*Up::
	breakdk()
	prevGlyph := ""
return

~*Down::
	breakdk()
	prevGlyph := ""
return

~*Left::
	breakdk()
	prevGlyph := ""
return

~*Right::
	breakdk()
	prevGlyph := ""
return

~*Home::
	breakdk()
	prevGlyph := ""
return

~*End::
	breakdk()
	prevGlyph := ""
return

~*PgUp::
	breakdk()
	prevGlyph := ""
return

~*PgDn::
	breakdk()
	prevGlyph := ""
return

~*LShift::
	modShift := 1
	modLShift := 1
	assist()
return

~*LShift up::
	modShift := 0
	modLShift := 0
	assist()
return

~*RShift::
	modShift := 1
	modRShift := 1
	assist()
return

~*RShift up::
	modShift := 0
	modRShift := 0
	assist()
return

~*LAlt::
	modAlt := 1
	modLAlt := 1
	modTAlt := 1
	assist()
return

~*LAlt up::
	modAlt := 0
	modLAlt := 0
	modTAlt := 0
	assist()
return

*RAlt::
	modAlt := 1
	modRAlt := 1
	modAltGr := 1
	assist()
return

*RAlt up::
	modAlt := 0
	modRAlt := 0
	modAltGr := 0
	assist()
return

~*LCtrl::
	modCtrl := 1
	modLCtrl := 1
	assist()
return

~*LCtrl up::
	modCtrl := 0
	modLCtrl := 0
	assist()
return

~*RCtrl::
	modCtrl := 1
	modRCtrl := 1
	assist()
return

~*RCtrl up::
	modCtrl := 0
	modRCtrl := 0
	assist()
return

~*LWin::
	modWin := 1
	modLWin := 1
	assist()
return

~*LWin up::
	modWin := 0
	modLWin := 0
	assist()
return

~*RWin::
	modWin := 1
	modRWin := 1
	assist()
return

~*RWin up::
	modWin := 0
	modRWin := 0
	assist()
return

*Space::
	if (!modShift) {
		put(" ")
	} else {
		modSpace := 1
	}
	assist()
return

*Space up::
	modSpace := 0
	assist()
return

CapsLock::
	if (mode = -1) {
		mode := 0
		imgPrefix := "[math]"
	} else {
		mode := -1
		imgPrefix := ""
	}
	state := -1
	assist()
return

CapsLock & F2::
	if (mode = -1) {
		mode := 2
		imgPrefix := "[greek]"
	} else {
		mode := -1
		imgPrefix := ""
	}
	state := -1
	assist()
return

;;#include babyhat_persist.ahk

#if (mode = -1)
#include babyhat_default.ahk

#if (mode = 0)
#include babyhat_math.ahk

#if (mode = 2)
#include babyhat_greek.ahk
