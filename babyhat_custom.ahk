remapCtrl(key) {
	if (key = "p")
		Send {Blind}{F4}
	else if (key = "[")
		Send {Blind}{Shift down}{Tab}{Shift up}
	else if (key = "]")
		Send {Blind}{Tab}
	else if (key = "\")
		Send {Blind}t
	else
		Send {Blind}%key%
}

remapWin(key) {
	if (key = "c")
		Run Control Panel
	else if (key = "b")
		Run util\HideDesktopIcons\HideDesktopIcons.exe
	else
		Send {Blind}%key%
}
