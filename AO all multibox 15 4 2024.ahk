#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.



;-------------------------------Declare variables + Helper Functions--------------------------------------
;  #Include %A_ScriptDir%
Orochi_KeepCapslockOff()
keyArray := [
(Join
"Space", "Esc" , "Up", "Down" ,"Left" ,"Right", "Alt", "Control", "Shift",
"F1", "F2", "F3", "F4", "F5", "F6", 
"q", "+q", 
"e", "+e",
"r","^r" ,"^!r","^+!r"    ,"!r"     ,"+r" ,
"t" ,
"y" ,
"u" ,
"!a","+!a","+a",
"!s","+!s","+s",
"!d","+!d","+d",
"f","+f",
"g","+g","!^g","+!g",
"h" ,
"j" ,
"v" ,
"+z","+^z","!+z",
"+x","!+x",
"+c","!+c",
"+1",
"^+2","+2",
"^+3","+3",
"+4","!+4","^+4","^+!4",
"5","6","7","8","9","0"
)]
tildeKeyArray := Orochi_AppendArray(keyArray, "~")
arrayCount := tildeKeyArray.Count()

;-------------------------------hotkeys--------------------------------------
Loop, %arrayCount%
{
	triggerVar := tildeKeyArray[A_Index]
	Hotkey, %triggerVar%, SendToWindows, On
}
Pause::Exitapp

;-------------------------------------------------------------------labels-----------------------------

SendToWindows:
thisHotkeyNoTilde := StrReplace(A_ThisHotkey, "~", "")
thisHotkeyNoAlt := StrReplace(thisHotkeyNoTilde, "!", "")
thisHotkeyNoCtrl := StrReplace(thisHotkeyNoAlt, "^", "")
thisHotkeyNoModifiers := StrReplace(thisHotkeyNoCtrl, "+", "")
thisHotkeyLength :=  StrLen(thisHotkeyNoModifiers)

toSend := thisHotkeyNoTilde
If (thisHotkeyLength > 1)  ; If it has a length of over 1, It was a a special named key, and thus needs brackets added to it
{
	toSend := "{" . thisHotkeyNoModifiers . "}"   ;
}
Orochi_SendToWindowsExceptCurrent(toSend, "Anarchy Online -")
return



