Orochi_KeepCapslockOff(TurnOffCapsLockDelay:=1000)
{
	Settimer, TurnOffCapsLock, %TurnOffCapsLockDelay%
	return
}

TurnOffCapsLock:
SetCapsLockState, Off
return
