#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

Orochi_AppendArray(array, leftSide:="", rightSide:="")
{
	numberOfElements := array.count()
	Loop,  %numberOfElements%
	{
		array[A_Index] := leftSide . array[A_Index] . rightSide
	}
	return array
}
	
