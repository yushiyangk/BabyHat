putcomb(diac, dacute, dgrave) {
	if (diac = "́") {
		curGlyph := dacute
	} else if (diac = "") {
		curGlyph := dgrave
	}

	if (curGlyph = "") {
		put(diac)
	} else {
		Send {Backspace}
		put(curGlyph)
	}
}

combine(diac) {
	global prevGlyph

	if (prevGlyph = "a") {
		putcomb(diac, "á", "à")
	} else {
		putcomb(diac, "", "")
	}
}
