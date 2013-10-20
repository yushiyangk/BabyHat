prevGlyph := ""
prevWin := ""
prevCtrl := ""

#include babyhat_combine.ahk
#include babyhat_custom.ahk

put(glyph) {
	global prevGlyph
	global prevWin
	global prevCtrl

	WinGet, curWin, ID, A
	ControlGetFocus, curCtrl, A
	if (curWin != prevWin || curCtrl != prevCtrl) {
		prevWin := curWin
		prevCtrl := curCtrl
		prevGlyph := ""
	}

	StringGetPos, diacFlag, glyph, !C
	if (glyph = "") {
		SoundPlay *-1
	} else if (diacFlag = 0) {
		StringTrimLeft, diac, glyph, 2
		combine(diac)
	} else {
		Send %glyph%
		prevGlyph := glyph
	}
}

putcomb(diac, dacute, dgrave) {
	if (diac = "́") {
		curGlyph := dacute
	} else if (diac = "̛") {
		curGlyph := dgrave
	}

	if (curGlyph = "") {
		put(diac)
	} else {
		Send {Backspace}
		put(curGlyph)
	}
}

putkey(ctrl, base = "", shift = "", altgr = "", altgrshift = "", dkdiac = "", dkdiacshift = "") {
	global modShift
	global modLShift
	global modRShift
	global modAlt
	global modLAlt
	global modRAlt
	global modAltGr
	global modTAlt
	global modCtrl
	global modLCtrl
	global modRCtrl
	global modWin
	global modLWin
	global modRWin
	global modSpace
	global modDk
	global modDkDiac

	if (modCtrl) {
		remapCtrl(ctrl)
	} else if (modWin) {
		remapWin(ctrl)
	} else if (modDk) {
		if (modDkDiac && !modAlt && !modShift) {
			put(dkdiac)
		} else if (modDkDiac && !modAlt && modShift) {
			put(dkdiacshift)
		}
	} else if (modSpace) {
		;if (modShift) {
			put(altgr)
		;}
	} else {
		if (!modAlt && !modShift) {
			put(base)
		} else if (!modAlt && modShift) {
			put(shift)
		} else if (modAltGr && !modShift) {
			put(altgr)
		} else if (modAltGr && modShift) {
			put(altgrshift)
		} else {
			SoundPlay, *-1
		}
	}
	deadkey()
}

deadkey() {
	global modDk
	global modDkDiac

	modDk := 0
	modDkDiac := 0
	assist()
}

assist() {
	global picId
	global imgPrefix
	global state
	global assist
	global assistState
	global enabled

	global modShift
	global modLShift
	global modRShift
	global modAlt
	global modLAlt
	global modRAlt
	global modAltGr
	global modTAlt
	global modCtrl
	global modLCtrl
	global modRCtrl
	global modWin
	global modLWin
	global modRWin
	global modSpace
	global modDk
	global modDkDiac

	if (modCtrl || modWin) {
		if (assist && assistState) {
			Gui, Hide
			assistState := 0
		}
	} else {
		if (assist && !assistState) {
			Gui, Show, NA
			assistState := 1
		}
		if (modDk) {
			if (modDkDiac && !modAlt && !modShift) {
				if (state != -10) {
					GuiControl, , %picId%, res/%imgPrefix%dkdiac.png
					state := -10
				}
			} else if (modDkDiac && !modAlt && modShift) {
				if (state != -11) {
					GuiControl, , %picId%, res/%imgPrefix%dkdiac+shift.png
					state := -11
				}
			}
		} else if (modSpace) {
			if (state != 10) {
				GuiControl, , %picId%, res/%imgPrefix%altgr.png
				state := 10
			}
		} else {
			if (!modAlt && !modShift) {
				if (state != 0) {
					GuiControl, , %picId%, res/%imgPrefix%base.png
					state := 0
				}
			} else if (!modAlt && modShift) {
				if (state != 1) {
					GuiControl, , %picId%, res/%imgPrefix%shift.png
					state := 1
				}
			} else if (modAltGr && !modShift) {
				if (state != 10) {
					GuiControl, , %picId%, res/%imgPrefix%altgr.png
					state := 10
				}
			} else if (modAltGr && modShift) {
				if (state != 11) {
					GuiControl, , %picId%, res/%imgPrefix%altgr+shift.png
					state := 11
				}
			}
		}
	}
}
