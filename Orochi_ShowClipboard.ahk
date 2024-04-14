#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.




Orochi_ShowClipboard()
{
Length := StrLen(clipboard)
sentence1 := "Length of clipboard = " . Length . " characters long"

ClipWait
lines = %clipboard%
nlines = 0
Loop Parse, lines, `n
{
  ++nlines
} 

sentence2 := "number of sentences = " . nlines

returntext := sentence1 . "`r`n" . sentence2

MSgbox %returntext%


}

