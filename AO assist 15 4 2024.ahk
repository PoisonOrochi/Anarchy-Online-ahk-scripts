#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

;--------------------innitiate variables + helper functions-----------------------------------------------------------------------
; bag options y coord 15 pixels steps in Y
shortDelay := 25
mediumDelay := 50
longDelay := 100
veryLongDelay := 200
coffeeDelay := mediumDelay
titleMatch := "Anarchy Online -"
AORefreshIDListDelay := 3000
waitTimeClicks := 20
Gosub, AORefreshIDList
Gosub, AORefreshIDList
Settimer, AORefreshIDList, %AORefreshIDListDelay%
Orochi_KeepCapslockOff()


;-------------Hotkeys------------------------------------------------------------------
SetDefaultMouseSpeed, 0
SetTitleMatchMode 1
Hotkey, CapsLock, CapsLockRecord, On
Hotkey, CapsLock & WheelUp, AOCycleAccountsUp, On
Hotkey, CapsLock & WheelDown, AOCycleAccountsDown, On
Loop, %extractedIdArraylength%
{
	fNumber := "F" . A_Index
	Hotkey, CapsLock & %fNumber%, AOSwitchAccount, On
}
Hotkey, CapsLock & l, AOLookingForTeam, On
Hotkey, CapsLock & i, AOAcceptInvites, On
Hotkey, CapsLock & u, AOItemCombineUp, On
Hotkey, CapsLock & J, AOItemTradeskillDown, On
Hotkey, CapsLock & m, AOItemCombineDown, On
Hotkey, CapsLock & r, AOBagExpandNewbag, On
Hotkey, CapsLock & t, AOBagListNewbag, On
Hotkey, CapsLock & f, AOBagExpand, On
Hotkey, CapsLock & g, AOBagList, On
Hotkey, CapsLock & s, AOOpenDoor, On
Hotkey, CapsLock & a, AOItemMoveLeft, On
Hotkey, CapsLock & d, AOItemMoveRight, On
Hotkey, CapsLock & w, AOItemMoveUp, On
Hotkey, CapsLock & x, AOItemMoveDown, On
Hotkey, CapsLock & q, AOItemMoveUpperLeft, On
Hotkey, CapsLock & e, AOItemMoveUpperRight, On
Hotkey, CapsLock & z, AOItemMoveLowerLeft, On
Hotkey, CapsLock & c, AOItemMoveLowerRight, On
Hotkey, CapsLock & k, AOMakeCoffee, On
Hotkey, CapsLock & o, AOCombineCoffee, On
Hotkey, CapsLock & v, AOStartStopWatch, On
Pause::ExitApp, On
Capslock & LButton::
While GetKeyState("LButton","P")
	Send, {LButton}
Return






;----------labels and functions----------------------------------------------------- 





AOStartStopWatch:
StartTime := A_TickCount
Hotkey, CapsLock & v, AOStopStopWatch, On
return

AOStopStopWatch:
Hotkey, CapsLock & v, AOStartStopWatch, On
ElapsedTime := A_TickCount - StartTime
Orochi_ToolTip(ElapsedTime)
return

AORefreshIDList:
SetTitleMatchMode, 2
WinGet, extractedIdPseudoArray, List, %titleMatch%,
extractedIdArray := Orochi_PseudoToArray("extractedIdPseudoArray")
extractedIdArraylength := extractedIdArray.count()
staticIdArrayLength := staticIdArray.count()
if (staticIdArrayLength != extractedIdArraylength)
{
	staticIdArray := extractedIdArray
}
return

CapsLockRecord:
Input, input1, L1 T2
Input, input2, L1 T1
if input1 between 0 and 9
{
	OAOSwitchHotbarRowMain(input1, input2)
}
return

OAOSwitchHotbarRowMain(barNr, rowNr)
{
	Send !%barNr%
	Send +%rowNr%
	Send !1
	return
}



; Orochi_SendToWindowsExceptCurrent(toSend, "Anarchy Online -")



AOCycleAccountsUp:
WinGet, currentID, ID, %titleMatch%,,
Loop, %staticIdArrayLength%
{
	loopID := staticIdArray[A_Index]
	If (currentID = loopID)
	{
		positionInListNr := A_Index
	}
}
nextAccountUpNr := positionInListNr + 1
If (nextAccountUpNr > staticIdArrayLength)
{
	nextAccountUpNr := 1
}
WinMinimizeAll
nextAccountUpID := staticIdArray[nextAccountUpNr]
Sleep 50
WinActivate, ahk_id %nextAccountUpID%
return

AOCycleAccountsDown:
WinGet, currentID, ID, %titleMatch%,,
Loop, %staticIdArrayLength%
{
	loopID := staticIdArray[A_Index]
	If (currentID = loopID)
	{
		positionInListNr := A_Index
	}
}
nextAccountDownNr := positionInListNr - 1
If (nextAccountDownNr < 1) 
{
	nextAccountDownNr := staticIdArrayLength
}
WinMinimizeAll
nextAccountDownID := staticIdArray[nextAccountDownNr]
Sleep 50
WinActivate, ahk_id %nextAccountDownID%
return

AOSwitchAccount:
WinMinimizeAll
Sleep 100
acccountNr := StrReplace(A_ThisHotkey, "CapsLock & F", "")
accountId := staticIdArray[acccountNr]
WinActivate, ahk_id %accountId%
return

AOLookingForTeam:
;Orochi_SendToWindowsExceptCurrent("{Enter}", "Anarchy Online -")
;Sleep 500
Orochi_SendToWindowsExceptCurrent("/lft", "Anarchy Online -")
Sleep 200 
Orochi_SendToWindowsExceptCurrent("{Enter}", "Anarchy Online -")
return


AOAcceptInvites:
Loop, %staticIdArrayLength%
{
	Gosub, AOCycleAccountsDown
	Sleep 400
	Click, 932, 580
	Sleep 200
}	
return


AOItemCombineUp:
MouseGetPos, OutputVarX, OutputVarY
OutputVarXUp := OutputVarX 
OutputVarYUp := OutputVarY - 19
Click
Sleep, 25
Send {Shift down}
Sleep, 25
MouseClick, right, %OutputVarXUp%, %OutputVarYUp%
Sleep, 25
Send {Shift up}
Sleep, 25
MouseMove, %OutputVarXUp%, %OutputVarYUp%
return

AOItemCombineDown:
MouseGetPos, OutputVarX, OutputVarY
OutputVarXDown := OutputVarX 
OutputVarYDown := OutputVarY + 19
RestVarY := OutputVarY - 19
Click
Sleep, 25
Send {Shift down}
Sleep, 25
MouseClick, right, %OutputVarXDown%, %OutputVarYDown%
Sleep, 25
Send {Shift up}
Sleep, 25
MouseMove, %OutputVarXDown%, %RestVarY%
return

AOItemTradeskillDown:
MouseGetPos, OutputVarX, OutputVarY
OutputVarXDown := OutputVarX 
OutputVarYDown := OutputVarY + 19
Click
Sleep, 25
Send {Shift down}
Sleep, 25
MouseClick, right, %OutputVarXDown%, %OutputVarYDown%
Sleep, 25
Send {Shift up}
Sleep, 25
MouseMove, %OutputVarX%, %OutputVarY%
return

AOBagExpand:
MouseGetPos, OutputVarX, OutputVarY
OutputVarYDrag1 := OutputVarY + 191
OutputVarYDrop1 := OutputVarY + 423
OutputVarYDrag2 := OutputVarY + 186
OutputVarYDrop2 := OutputVarY + 418
OutputVarYDrag3 := OutputVarY + 196
OutputVarYDrop3 := OutputVarY + 428
OutputVarXList := OutputVarX + 41
OutputVarYList := OutputVarY + 21
OutputVarXAutofade := OutputVarX + 41
OutputVarYAutofade := OutputVarY + 66
MouseMove, %OutputVarX%, %OutputVarYDrag1%, 10
Click, Down, %OutputVarX%, %OutputVarYDrag1%
MouseMove, %OutputVarX%, %OutputVarYDrop1%, 10
Click, Up
MouseMove, %OutputVarX%, %OutputVarYDrag2%, 10
Click, Down, %OutputVarX%, %OutputVarYDrag2%
MouseMove, %OutputVarX%, %OutputVarYDrop2%, 10
Click, Up
MouseMove, %OutputVarX%, %OutputVarYDrag3%, 10
Click, Down, %OutputVarX%, %OutputVarYDrag3%
MouseMove, %OutputVarX%, %OutputVarYDrop3%, 10
Click, Up
MouseMove, %OutputVarX%, %OutputVarY%, 10  ; autofade section
Click, %OutputVarX%, %OutputVarY%
MouseMove, %OutputVarXAutofade%, %OutputVarYAutofade%, 10
Click, %OutputVarXAutofade%, %OutputVarYAutofade%
MouseMove, %OutputVarX%, %OutputVarY%, 10  ;move mouse back to where u started
return

AOBagExpandNewbag:
MouseGetPos, StartingXCoords, StartingYCoords
MouseMove, 884, 455, 10
Gosub, AOBagExpand
MouseMove, %StartingXCoords%, %StartingYCoords%, 10
return

AOBagList:
MouseGetPos, OutputVarX, OutputVarY
OutputVarXList := OutputVarX + 41
OutputVarYList := OutputVarY + 21
OutputVarXAutofade := OutputVarX + 41
OutputVarYAutofade := OutputVarY + 66
MouseMove, %OutputVarX%, %OutputVarY%, 10
Sleep %waitTimeClicks%
Click, %OutputVarX%, %OutputVarY%
MouseMove, %OutputVarXList%, %OutputVarYList%, 10
Sleep %waitTimeClicks%
Click, %OutputVarXList%, %OutputVarYList%
MouseMove, %OutputVarX%, %OutputVarY%, 10  ;autofade section
Sleep %waitTimeClicks%
Click, %OutputVarX%, %OutputVarY%
MouseMove, %OutputVarXAutofade%, %OutputVarYAutofade%, 10
Sleep %waitTimeClicks%
Click, %OutputVarXAutofade%, %OutputVarYAutofade%
MouseMove, %OutputVarX%, %OutputVarY%, 10 ; back to start
Sleep %waitTimeClicks%
return

AOBagListNewbag:
MouseGetPos, StartingXCoords, StartingYCoords
MouseMove, 884, 455, 10
Gosub, AOBagList
MouseMove, %StartingXCoords%, %StartingYCoords%, 10
return

AOOpenDoor:
Sleep 100
Click, 30, 1050, left
Sleep 100
Click, 960, 480, right
Sleep 200
Click, 960, 480, right
return

AOItemMoveLeft:
MouseGetPos, OutputVarX, OutputVarY
OutputVarXLeft := OutputVarX - 180
OutputVarYLeft := OutputVarY
Click
Sleep, 50
MouseClick, left, %OutputVarXLeft%, %OutputVarYLeft%
Sleep, 50
MouseMove, %OutputVarX%, %OutputVarY%
return

AOItemMoveRight:
MouseGetPos, OutputVarX, OutputVarY
OutputVarXRight := OutputVarX + 180
OutputVarYRight := OutputVarY
Click
Sleep, 50
MouseClick, left, %OutputVarXRight%, %OutputVarYRight%
Sleep, 50
MouseMove, %OutputVarX%, %OutputVarY%
return

AOItemMoveUp:
MouseGetPos, OutputVarX, OutputVarY
OutputVarXUp := OutputVarX
OutputVarYUp := OutputVarY - 180
Click
Sleep, 50
MouseClick, left, %OutputVarXUp%, %OutputVarYUp%
Sleep, 50
MouseMove, %OutputVarX%, %OutputVarY%
return

AOItemMoveDown:
MouseGetPos, OutputVarX, OutputVarY
OutputVarXDown := OutputVarX 
OutputVarYDown := OutputVarY + 180
Click
Sleep, 50
MouseClick, left, %OutputVarXDown%, %OutputVarYDown%
Sleep, 50
MouseMove, %OutputVarX%, %OutputVarY%
return

AOItemMoveUpperLeft:
MouseGetPos, OutputVarX, OutputVarY
OutputVarXLeft := OutputVarX - 180
OutputVarYLeft := OutputVarY - 180
Click
Sleep, 50
MouseClick, left, %OutputVarXLeft%, %OutputVarYLeft%
Sleep, 50
MouseMove, %OutputVarX%, %OutputVarY%
return

AOItemMoveUpperRight:
MouseGetPos, OutputVarX, OutputVarY
OutputVarXLeft := OutputVarX + 180
OutputVarYLeft := OutputVarY - 180
Click
Sleep, 50
MouseClick, left, %OutputVarXLeft%, %OutputVarYLeft%
Sleep, 50
MouseMove, %OutputVarX%, %OutputVarY%
return

AOItemMoveLowerLeft:
MouseGetPos, OutputVarX, OutputVarY
OutputVarXLeft := OutputVarX - 180
OutputVarYLeft := OutputVarY + 180
Click
Sleep, 50
MouseClick, left, %OutputVarXLeft%, %OutputVarYLeft%
Sleep, 50
MouseMove, %OutputVarX%, %OutputVarY%
return

AOItemMoveLowerRight:
MouseGetPos, OutputVarX, OutputVarY
OutputVarXLeft := OutputVarX + 180
OutputVarYLeft := OutputVarY + 180
Click
Sleep, 50
MouseClick, left, %OutputVarXLeft%, %OutputVarYLeft%
Sleep, 50
MouseMove, %OutputVarX%, %OutputVarY%
return

AOMakeCoffee:
Loop
{
	Loop, 28
	{
		Orochi_SendToWindows("1", "Anarchy Online -")
		Sleep 40000
	}
	Sleep 1000
	Gosub, AOCombineCoffee
	
	
}
return


AOCombineCoffee:
Loop, %staticIdArrayLength%
{
	
	Sleep 500
	Click, 40, 140 , left
	Sleep %coffeeDelay% 
	Click, 98, 198 , left  ; main 1
	Sleep %coffeeDelay% 
	Click, 98, 140 , left
	Sleep %coffeeDelay% 
	Click, 98, 198 , left  ; main 1
	Sleep %coffeeDelay% 
	Click, 156, 140 , left
	Sleep %coffeeDelay% 
	Click, 98, 198 , left  ; main 1
	Sleep %coffeeDelay% 
	Click, 40, 198 , left
	Sleep %coffeeDelay% 
	Click, 98, 198 , left  ; main 1
	Sleep %coffeeDelay% 
	Click, 156, 198 , left
	Sleep %coffeeDelay% 
	Click, 98, 198 , left  ; main 1
	Sleep %coffeeDelay% 
	Click, 40, 256 , left
	Sleep %coffeeDelay% 
	Click, 98, 198 , left  ; main 1
	Sleep %coffeeDelay% 
	Click, 98, 256 , left
	Sleep %coffeeDelay% 
	Click, 98, 198 , left  ; main 1
	Sleep %coffeeDelay% 
	Click, 156, 256 , left
	Sleep %coffeeDelay% 
	Click, 98, 198 , left  ; main 1
	Sleep %coffeeDelay% 
	
	
	Click, 40, 314 , left
	Sleep %coffeeDelay% 
	Click, 98, 372 , left ; main 2
	Sleep %coffeeDelay% 
	Click, 98, 314 , left
	Sleep %coffeeDelay% 
	Click, 98, 372 , left ; main 2
	Sleep %coffeeDelay% 
	Click, 156, 314 , left
	Sleep %coffeeDelay% 
	Click, 98, 372 , left ; main 2
	Sleep %coffeeDelay% 
	Click, 40, 372 , left
	Sleep %coffeeDelay% 
	Click, 98, 372 , left ; main 2
	Sleep %coffeeDelay% 
	Click, 156, 372 , left
	Sleep %coffeeDelay% 
	Click, 98, 372 , left ; main 2
	Sleep %coffeeDelay% 
	Click, 40, 430 , left
	Sleep %coffeeDelay% 
	Click, 98, 372 , left ; main 2
	Sleep %coffeeDelay% 
	Click, 98, 430 , left
	Sleep %coffeeDelay% 
	Click, 98, 372 , left ; main 2
	Sleep %coffeeDelay% 
	Click, 156, 430 , left
	Sleep %coffeeDelay% 
	Click, 98, 372 , left ; main 2
	Sleep %coffeeDelay% 
	
	Click, 40, 488 , left
	Sleep %coffeeDelay% 
	Click, 98, 546 , left ; main 3
	Sleep %coffeeDelay% 
	Click, 98, 488 , left
	Sleep %coffeeDelay% 
	Click, 98, 546 , left ; main 3
	Sleep %coffeeDelay% 
	Click, 156, 488 , left
	Sleep %coffeeDelay% 
	Click, 98, 546 , left ; main 3
	Sleep %coffeeDelay% 
	Click, 40, 546 , left
	Sleep %coffeeDelay% 
	Click, 98, 546 , left ; main 3
	Sleep %coffeeDelay% 
	Click, 156, 546 , left
	Sleep %coffeeDelay% 
	Click, 98, 546 , left ; main 3
	Sleep %coffeeDelay% 
	Click, 40, 604 , left
	Sleep %coffeeDelay% 
	Click, 98, 546 , left ; main 3
	Sleep %coffeeDelay% 
	Click, 98, 604 , left
	Sleep %coffeeDelay% 
	Click, 98, 546 , left ; main 3
	Sleep %coffeeDelay% 
	Click, 156, 604 , left
	Sleep %coffeeDelay% 
	Click, 98, 546 , left ; main 3
	Sleep %coffeeDelay% 
		
	Sleep 2000
	
	Click, 98, 198 , left  ; main 1
	Sleep %coffeeDelay% 
	Click, 98, 372 , left ; main 2
	Sleep %veryLoongDelay% 
	Click, 98, 372 , left ; main 2
	Sleep %coffeeDelay% 
	Click, 98, 546 , left ; main 3
	Sleep %veryLoongDelay% 
	Click, 98, 546 , left ; main 3
	Sleep %coffeeDelay% 
	Click, 98, 64 , left  ; main main
	Sleep %coffeeDelay% 
	Sleep 500
	Gosub, AOCycleAccountsDown
}
return



