; Firefox -> Streamlink
#SingleInstance force
#IfWinActive ahk_exe firefox.exe
!j::								;this hotkey is only enabled while the above statement is true
	Send, {Media_Stop}
	Send, ^l
	Sleep, 200
	Send, ^c
	Clipboard := RegExReplace(Clipboard, "&.*", "")

	if WinExist("ahk_exe powershell.exe")
		WinActivate, ahk_exe powershell.exe
	else {
		Run, powershell.exe
		Sleep, 200
	}

	SendInput, streamlink{Space}
	Send, ^v
	SendInput, {Space}best{Enter}
return								;end of the hotkey