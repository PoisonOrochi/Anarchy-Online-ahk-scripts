#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

Orochi_SendToWindowsExceptCurrent(whatToSend, whereToSendTitleMatch)
{
	
	SetTitleMatchMode 2
	WinGet, id, List, %whereToSendTitleMatch%,,
	
	Loop, %id%
	{
		currentId := id%A_Index%
		if(A_Index = 1)
		{
			continue
		}
		ControlSend,, %whatToSend%, ahk_id %currentId%
	} 	
	return id
}