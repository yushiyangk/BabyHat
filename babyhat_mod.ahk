﻿prevglyph := ""
prevwin := ""
prevctrl := ""

#include babyhat_combine.ahk
#include babyhat_custom.ahk

put(glyph) {
	global prevglyph
	global prevwin
	global prevctrl

	WinGet, curwin, ID, A
	ControlGetFocus, curctrl, A
	if (curwin != prevwin || curctrl != prevctrl) {
		prevwin := curwin
		prevctrl := curctrl
		prevglyph := ""
	}

	StringGetPos, diacflag, glyph, !C
	if (glyph = "") {
		SoundPlay *-1
	} else if (diacflag = 0) {
		StringTrimLeft, diac, glyph, 2
		combine(diac)
	} else {
		Send %glyph%
		prevGlyph := glyph
	}
}

putcomb(diac, dacute, dgrave) {
	if (diac = "́") {
		curglyph := dacute
	} else if (diac = "̛") {
		curglyph := dgrave
	}

	if (curglyph = "") {
		put(diac)
	} else {
		Send {Backspace}
		put(curglyph)
	}
}

putkey(ctrl, base = "", shift = "", altgr = "", altgrshift = "", dkdiac = "", dkdiacshift = "", dkpic = "", dkpicshift = "", dkpicaltgr = "") {
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
	global modDkPic

	if (modCtrl) {
		remapCtrl(ctrl)
	} else if (modWin) {
		remapWin(ctrl)
	} else if (modDk) {
		if (modDkDiac && !modAlt && !modShift) {
			put(dkdiac)
		} else if (modDkDiac && !modAlt && modShift) {
			put(dkdiacshift)
		} else if (modDkPic && !modAlt && !modShift) {
			put(dkpic)
		} else if (modDkPic && !modAlt && modShift) {
			put(dkpicshift)
		} else if (modDkPic && modAlt && !modShift) {
			put(dkpicaltgr)
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
	global modDkPic

	modDk := 0
	modDkDiac := 0
	modDkPic := 0
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
	global modDkPic

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
			} else if (modDkPic && !modAlt && !modShift) {
				if (state != -20) {
					GuiControl, , %picId%, res/%imgPrefix%dkpic.png
					state := -20
				}
			} else if (modDkPic && !modAlt && modShift) {
				if (state != -21) {
					GuiControl, , %picId%, res/%imgPrefix%dkpic+shift.png
					state := -21
				}
			} else if (modDkPic && modAlt && !modShift) {
				if (state != -22) {
					GuiControl, , %picId%, res/%imgPrefix%dkpic+altgr.png
					state := -22
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

~*LButton::
	prevglyph := ""
return

~*RButton::
	prevglyph := ""
return

~*MButton::
	prevglyph := ""
return

~*Backspace::
	prevglyph := ""
return

~*Delete::
	prevglyph := ""
return

~*Enter::
	prevglyph := ""
return

~*Escape::
	prevglyph := ""
return

~*Up::
	prevglyph := ""
return

~*Down::
	prevglyph := ""
return

~*Left::
	prevglyph := ""
return

~*Right::
	prevglyph := ""
return

~*Home::
	prevglyph := ""
return

~*End::
	prevglyph := ""
return

~*PgUp::
	prevglyph := ""
return

~*PgDn::
	prevglyph := ""
return
