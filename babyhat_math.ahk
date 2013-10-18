﻿*SC029:: putkey("``", "``", "~", "©", "®",,, "✈", "⚛", "☽")
*SC002:: putkey("1", "\", "{Raw}#", "¬", "№",,, "✍", "❄", "☾")
*SC003:: putkey("2", "[", "7", "„", "‚",,, "✉", "☮", "☳")
*SC004:: putkey("3", "{Raw}{", "5", "“", "‘", "̋",, "⚄", "☯", "☲")
*SC005:: putkey("4", "{Raw}}", "3", "”", "’", "̏",, "⚂", "☸", "☱")
*SC006:: putkey("5", "(", "1", "«", "‹", "̔",, "⚀", "✠", "☰")
*SC007:: putkey("6", "@", "9", "†", "‡",,, "☚", "☜", "☊")
*SC008:: putkey("7", "{Raw}^", "0", "§", "¶",,, "☛", "☞", "☋")
*SC009:: putkey("8", ")", "2", "»", "›", "̓",, "⚁", "✝", "☷")
*SC00A:: putkey("9", "_", "4", "–", "—", "̄", "̱", "⚃", "☪", "☶")
*SC00B:: putkey("0", "]", "6", "¤", "¥",,, "⚅", "✡", "☵")
*SC00C:: putkey("-", "$", "8", "€", "£",,, "☎", "☏", "☴")
*SC00D:: putkey("{Raw}=", "|", "%", "¦", "‰", "̊",, "✂", "✄", "☄")
*SC010:: putkey("q", "z", "Z",,,,, "♩", "☔", "♈")
*SC011:: putkey("w", "m", "M", "μ",,,, "♪", "☂", "♉")
*SC012:: putkey("e", "b", "B",,,,, "♯", "☀", "♊")
*SC013:: putkey("r", "w", "W",,,,, "♭", "☁", "♋")
*SC014:: putkey("t", "j", "J",,,,, "♮", "☃", "♌")
*SC015:: putkey("y", "x", "X",,,,, "⚑", "⚐", "♍")
*SC016:: putkey("u", "y", "Y",,,,, "☕", "♨", "♎")
*SC017:: putkey("i", "d", "D", "ð", "Ð",,, "✓", "☑", "♏")
*SC018:: putkey("o", "c", "C", "ç", "Ç",,, "✗", "☒", "♐")
*SC019:: putkey("p", "p", "P", "℘",,,, "☗", "☖", "♑")
*SC01A:: putkey("[", "-", "+", "−", "·",,, "☡", "☠", "♒")
*SC01B:: putkey("]", "/", "*", "÷", "×",,, "☢", "☣", "♓")
*SC02B::
	if (modCtrl) {
		remapCtrl("\")
	} else if (modWin) {
		remapWin("\")
	} else if (!modDk && !modAlt && !modShift) {
		modDk := 1
		modDkDiac := 1
		assist()
	} else if (!modDk && !modAlt && modShift) {
		Send {Raw}=
	} else if (!modDk && modAlt && !modShift) {
		modDk := 1
		modDkPic := 1
		assist()
	} else {
		SoundPlay, *-1
	}
return
*SC01E:: putkey("a", "u", "U", "ü", "Ü", "̛",, "♠", "♤", "☉")
*SC01F:: putkey("s", "i", "I", "ï", "Ï",,, "♥", "♡", "☿")
*SC020:: putkey("d", "e", "E", "é", "É", "́",, "♦", "♢", "♀")
*SC021:: putkey("f", "o", "O", "œ", "Œ", "̀",, "♣", "♧", "⊕")
*SC022:: putkey("g", "a", "A", "æ", "Æ", "̈",, "☻", "☺", "♂")
*SC023:: putkey("h", "r", "R",,,,, "♛", "♕", "♃")
*SC024:: putkey("j", "h", "H",,,,, "♟", "♙", "♄")
*SC025:: putkey("k", "t", "T", "þ", "Þ",,, "♞", "♘", "⛢")
*SC026:: putkey("l", "g", "G",,, "̂",, "♝", "♗", "♆")
*SC027:: putkey(";", "s", "S", "ſ", "ß", "̌",, "♜", "♖", "♇")
*SC028:: putkey("'", "'", """", "•", "°",,, "♚", "♔", "⚳")
*SC02C:: putkey("z", "v", "V", "ʌ", "Ʌ", "̉",, "✿", "❀", "☌")
*SC02D:: putkey("x", "q", "Q", "ø", "Ø",,, "⚘", "⚜", "⚹")
*SC02E:: putkey("c", ";", ":", "&", "‽",,, "☘", "☭",  "□")
*SC02F:: putkey("v", "f", "F",,,,, "⚖", "⚚", "△")
*SC030:: putkey("b", "k", "K",,,,, "⚔", "☤", "☍")
*SC031:: putkey("n", "l", "L", "ℓ", "ℒ",,, "⚙", "⚕", "⚷")
*SC032:: putkey("m", "n", "N", "ñ", "Ñ", "̃",, "⚓", "☥", "⚴")
*SC033:: putkey(",", ",", "<", "¢",, "̧", "̨", "☙", "✊", "♅")
*SC034:: putkey(".", ".", ">", "…",, "̇", "̣", "❧", "✋", "⚵")
*SC035:: putkey("/", "?", "{Raw}!", "¿", "¡",,, "❦", "✌", "⚶")
