combine(diac) {
	global prevglyph

	if (ErrorLevel = 1 ) {
		MsgBox ga
	}

	if (prevGlyph = "a") {
		putcomb(diac, "á", "à")
	} else {
		putcomb(diac, "", "")
	}
}
