prevGlyph := ""


combine(diac) {
	global prevGlyph

	if (prevGlyph = "a") {
		putcomb(diac,"á","à")
	}
}
