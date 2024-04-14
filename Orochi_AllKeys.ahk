#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

Orochi_AllKeys()
{
	endKeyListVar := "
	(Join
	{Alt}{AppsKey}{Backspace}{Break}{Browser_Back}{Browser_Favorites}{Browser_Forward}{Browser_Home}
	{Browser_Refresh}{Browser_Search}{Browser_Stop}{BS}{CapsLock}{Control}{CtrlBreak}{Delete}{Down}
	{End}{Enter}{Escape}{F1}{F10}{F11}{F12}{F13}{F14}{F15}{F16}{F17}{F18}{F19}{F2}{F20}{F21}{F22}
	{F23}{F24}{F3}{F4}{F5}{F6}{F7}{F8}{F9}{Help}{Home}{Insert}{LAlt}{Launch_App1}{Launch_App2}
	{Launch_Mail}{Launch_Media}{LButton}{LControl}{Left}{LShift}{LWin}{MButton}{Media_Next}
	{Media_Play_Pause}{Media_Prev}{Media_Stop}{NumLock}{Numpad0}{Numpad1}{Numpad2}{Numpad3}
	{Numpad4}{Numpad5}{Numpad6}{Numpad7}{Numpad8}{Numpad9}{NumpadAdd}{NumpadClear}{NumpadDel}
	{NumpadDiv}{NumpadDot}{NumpadDown}{NumpadEnd}{NumpadEnter}{NumpadHome}{NumpadIns}{NumpadLeft}
	{NumpadMult}{NumpadPgDn}{NumpadPgUp}{NumpadRight}{NumpadSub}{NumpadUp}{Pause}{PgDn}{PgUp}
	{PrintScreen}{RAlt}{RButton}{RControl}{Right}{RShift}{RWin}{ScrollLock}{Shift}{Sleep}{Space}
	{Tab}{Up}{Volume_Down}{Volume_Mute}{Volume_Up}{Wheel}{WheelDown}{WheelLeft}{WheelRight}{WheelUp}		{XButton1}{XButton2}
	)"
	
	allKeysArray := []
	allKeysArray.Push("~", "1", "2", "3", "4", "5", "6", "7", "8", "9", "0", 
	
	
	
	{Alt}
	{AppsKey}
	{Backspace}
	{Break}
	{Browser_Back}
	{Browser_Favorites}
	{Browser_Forward}
	{Browser_Home}
	{Browser_Refresh}
	{Browser_Search}
	{Browser_Stop}
	{CapsLock}
	{Control}
	{CtrlBreak}
	{Delete}
	{Down}
	{End}
	{Enter}
	{Escape}
	{F1}
	{F10}
	{F11}
	{F12}
	{F13}
	{F14}
	{F15}
	{F16}
	{F17}
	{F18}
	{F19}
	{F2}
	{F20}
	{F21}
	{F22}
	{F23}
	{F24}
	{F3}
	{F4}
	{F5}
	{F6}
	{F7}
	{F8}
	{F9}
	{Help}
	{Home}
	{Insert}
	{LAlt}
	{Launch_App1}
	{Launch_App2}
	{Launch_Mail}
	{Launch_Media}
	{LButton}
	{LControl}
	{Left}
	{LShift}
	{LWin}
	{MButton}
	{Media_Next}
	{Media_Play_Pause}
	{Media_Prev}
	{Media_Stop}
	{NumLock}
	{Numpad0}
	{Numpad1}
	{Numpad2}
	{Numpad3}
	{Numpad4}
	{Numpad5}
	{Numpad6}
	{Numpad7}
	{Numpad8}
	{Numpad9}
	{NumpadAdd}
	{NumpadClear}
	{NumpadDel}
	{NumpadDiv}
	{NumpadDot}
	{NumpadDown}
	{NumpadEnd}
	{NumpadEnter}
	{NumpadHome}
	{NumpadIns}
	{NumpadLeft}
	{NumpadMult}
	{NumpadPgDn}
	{NumpadPgUp}
	{NumpadRight}
	{NumpadSub}
	{NumpadUp}
	{Pause}
	{PgDn}
	{PgUp}
	{PrintScreen}
	{RAlt}
	{RButton}
	{RControl}
	{Right}
	{RShift}
	{RWin}
	{ScrollLock}
	{Shift}
	{Sleep}
	{Space}
	{Tab}
	{Up}
	{Volume_Down}
	{Volume_Mute}
	{Volume_Up}
	{WheelDown}
	{WheelLeft}
	{WheelRight}
	{WheelUp}
	{XButton1}
	{XButton2}
	
	return 
}