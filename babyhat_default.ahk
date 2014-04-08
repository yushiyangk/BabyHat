*SC029:: putkey("``", "``", "~", "©", "®")
*SC002:: putkey("1", "\", "{Raw}#", "¬", "№")
*SC003:: putkey("2", "[", "7", "„", "‚")
*SC004:: putkey("3", "{Raw}{", "5", "“", "‘", "!C̋")
*SC005:: putkey("4", "{Raw}}", "3", "”", "’", "!C̏")
*SC006:: putkey("5", "(", "1", "«", "‹", "!C̔")
*SC007:: putkey("6", "@", "9", "†", "‡")
*SC008:: putkey("7", "{Raw}=", "0", "§", "¶")
*SC009:: putkey("8", ")", "2", "»", "›", "!C̓")
*SC00A:: putkey("9", "_", "4", "–", "—", "!C̄", "!C̱")
*SC00B:: putkey("0", "]", "6", "¤", "¥")
*SC00C:: putkey("-", "$", "8", "€", "£")
*SC00D:: putkey("{Raw}=", "|", "%", "{Raw}^", "‰")
*SC010:: putkey("q", "z", "Z")
*SC011:: putkey("w", "m", "M", "µ")
*SC012:: putkey("e", "b", "B")
*SC013:: putkey("r", "w", "W")
*SC014:: putkey("t", "j", "J")
*SC015:: putkey("y", "x", "X")
*SC016:: putkey("u", "f", "F")
*SC017:: putkey("i", "g", "G", "ĝ", "Ĝ")
*SC018:: putkey("o", "c", "C", "ç", "Ç")
*SC019:: putkey("p", "p", "P")
*SC01A:: putkey("[", "-", "{Raw}+", "‐", "−")
*SC01B:: putkey("]", "/", "*", "÷", "×")
*SC02B::
	if (modCtrl) {
		remapCtrl("\")
	} else if (modWin) {
		remapWin("\")
	} else if (modDk) {
		deadkey()
	} else if (!modAlt) {
		modDk := 1
		modDkDiac := 1
		assist()
	} else if (modAlt && !modShift) {
		Send {Raw}=
	} else {
		SoundPlay, *-1
	}
return
*SC01E:: putkey("a", "u", "U", "ü", "Ü", "!C̆")
*SC01F:: putkey("s", "i", "I", "ï", "Ï", "!C̈")
*SC020:: putkey("d", "e", "E", "é", "É", "!Ć")
*SC021:: putkey("f", "a", "A", "æ", "Æ", "!C̀")
*SC022:: putkey("g", "o", "O", "œ", "Œ", "!Ĉ")
*SC023:: putkey("h", "r", "R", "ř", "Ř", "!Č")
*SC024:: putkey("j", "h", "H")
*SC025:: putkey("k", "t", "T", "þ", "Þ")
*SC026:: putkey("l", "d", "D", "ð", "Ð")
*SC027:: putkey(";", "s", "S", "ſ", "ß")
*SC028:: putkey("'", "'", """", "·", "°", "!C̊")
*SC02C:: putkey("z", "v", "V",,, "!C̉")
*SC02D:: putkey("x", "q", "Q", "ø", "Ø", "!C̛")
*SC02E:: putkey("c", ";", ":", "&", "‽")
*SC02F:: putkey("v", "k", "K", "å", "Å")
*SC030:: putkey("b", "y", "Y")
*SC031:: putkey("n", "l", "L")
*SC032:: putkey("m", "n", "N", "ñ", "Ñ", "!C̃")
*SC033:: putkey(",", ",", "<", "¢",, "!Ç", "!C̨")
*SC034:: putkey(".", ".", ">", "…",, "!Ċ", "!C̣")
*SC035:: putkey("/", "?", "{Raw}!", "¿", "¡")
