*SC029:: putkey("``", "``", "~", "©", "®",,,,, "✈", "⚛", "☽")
*SC002:: putkey("1", "\", "{Raw}#", "¬", "№",,,,, "✍", "❄", "☾")
*SC003:: putkey("2", "[", "7", "„", "‚",,,,, "✉", "☮", "☳")
*SC004:: putkey("3", "{Raw}{", "5", "“", "‘",,, "̋",, "⚄", "☯", "☲")
*SC005:: putkey("4", "{Raw}}", "3", "”", "’",,, "̏",, "⚂", "☸", "☱")
*SC006:: putkey("5", "(", "1", "«", "‹",,, "̔",, "⚀", "✠", "☰")
*SC007:: putkey("6", "@", "9", "†", "‡",,,,, "☚", "☜", "☊")
*SC008:: putkey("7", "{Raw}^", "0", "§", "¶",,,,, "☛", "☞", "☋")
*SC009:: putkey("8", ")", "2", "»", "›",,, "̓",, "⚁", "✝", "☷")
*SC00A:: putkey("9", "_", "4", "–", "—",,, "̄", "̱", "⚃", "☪", "☶")
*SC00B:: putkey("0", "]", "6", "¤", "¥",,,,, "⚅", "✡", "☵")
*SC00C:: putkey("-", "$", "8", "€", "£",,,,, "☎", "☏", "☴")
*SC00D:: putkey("{Raw}=", "|", "%", "¦", "‰",,, "̊",, "✂", "✄", "☄")
*SC010:: putkey("q", "z", "Z",,, "str", "Str",,, "♩", "☔", "♈")
*SC011:: putkey("w", "m", "M", "μ",, "bool", "Bool",,, "♪", "☂", "♉")
*SC012:: putkey("e", "b", "B",,, "const", "Const",,, "♯", "☀", "♊")
*SC013:: putkey("r", "w", "W",,, "static", "Static",,, "♭", "☁", "♋")
*SC014:: putkey("t", "j", "J",,, "var", "Var",,, "♮", "☃", "♌")
*SC015:: putkey("y", "x", "X",,, "until", "Until",,, "⚑", "⚐", "♍")
*SC016:: putkey("u", "f", "F",,, "each", "Each",,, "☕", "♨", "♎")
*SC017:: putkey("i", "g", "G",,, "for", "For",,, "✓", "☑", "♏")
*SC018:: putkey("o", "c", "C", "ç", "Ç", "while", "While",,, "✗", "☒", "♐")
*SC019:: putkey("p", "p", "P", "℘",, "do", "Do",,, "☗", "☖", "♑")
*SC01A:: putkey("[", "-", "{Raw}+", "−", "·",,,,, "☡", "☠", "♒")
*SC01B:: putkey("]", "/", "*", "÷", "×",,,,, "☢", "☣", "♓")
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
*SC01E:: putkey("a", "u", "U", "ü", "Ü", "string", "String", "̛",, "♠", "♤", "☉")
*SC01F:: putkey("s", "i", "I", "ï", "Ï", "char", "Char", "̈",, "♥", "♡", "☿")
*SC020:: putkey("d", "e", "E", "é", "É", "int", "Int", "́",, "♦", "♢", "♀")
*SC021:: putkey("f", "a", "A", "æ", "Æ", "float", "Float",,, "♣", "♧", "⊕")
*SC022:: putkey("g", "o", "O", "œ", "Œ", "double", "Double", "",, "☻", "☺", "♂")
*SC023:: putkey("h", "r", "R",,, "elsif", "Elsif",,, "♛", "♕", "♃")
*SC024:: putkey("j", "h", "H",,, "if", "If",,, "♟", "♙", "♄")
*SC025:: putkey("k", "t", "T", "þ", "Þ", "else", "Else",,, "♞", "♘", "⛢")
*SC026:: putkey("l", "d", "D", "ð", "Ð", "then", "Then", "̂",, "♝", "♗", "♆")
*SC027:: putkey(";", "s", "S", "ſ", "ß", "end", "End", "̌",, "♜", "♖", "♇")
*SC028:: putkey("'", "'", """", "•", "°",,,,, "♚", "♔", "⚳")
*SC02C:: putkey("z", "v", "V", "ʌ", "Ʌ", "public", "Public", "̉",, "✿", "❀", "☌")
*SC02D:: putkey("x", "q", "Q", "ø", "Ø", "private", "Private",,, "⚘", "⚜", "⚹")
*SC02E:: putkey("c", ";", ":", "&", "‽", "struct", "Struct",,, "☘", "☭",  "□")
*SC02F:: putkey("v", "k", "K",,, "new", "New",,, "⚖", "⚚", "△")
*SC030:: putkey("b", "y", "Y",,, "function", "Function",,, "⚔", "☤", "☍")
*SC031:: putkey("n", "l", "L", "ℓ", "ℒ", "case", "Case",,, "⚙", "⚕", "⚷")
*SC032:: putkey("m", "n", "N", "ñ", "Ñ", "switch", "Switch", "̃",, "⚓", "☥", "⚴")
*SC033:: putkey(",", ",", "<", "¢",, "continue", "Continue", "̧", "̨", "☙", "✊", "♅")
*SC034:: putkey(".", ".", ">", "…",, "break", "Break", "̇", "̣", "❧", "✋", "⚵")
*SC035:: putkey("/", "?", "{Raw}!", "¿", "¡", "goto", "Goto",,, "❦", "✌", "⚶")
