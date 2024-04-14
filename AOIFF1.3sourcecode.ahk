keydelay = 100

#f:: ;------------------------------When windowskey+f is pressed the on/off switch script for this scripts main function is flipped, this switch is here so u can toggle between using 
switch = 1
return

#g::
switch = 0
return

~f & ~b::
keydelay = 10 ;------------------------------these are hotkeys for creating the variables, that will later be transformed into actual keydelay settings, for some reason i cant set the key delays for all keys with just command
return
~f & ~n::
keydelay = 25
return
~f & ~m::
keydelay = 50
return
~f & ~k::
keydelay = 100
return

 
NumpadDel::. ;----------------------------Whenever numlock is off, the numpad keys(end,home etc) will instead 
NumpadIns::0
NumpadEnd::1
NumpadDown::2
NumpadPgDn::3
NumpadLeft::4
NumpadClear::5
NumpadRight::6
NumpadHome::7
NumpadUp::8
NumpadPgUp::9








~`:: 
{ ;--------------------------------------------------------------------------------------------------------------------BEGIN of the main
if switch = 1 ;--------------------------------------------------------------------------BEGIN check if switch is on/off
{
if keydelay = 50 ;--------------------------------------BEGIN transforming keydelay variables to actual keydelays
{
SetKeyDelay 50
}
if keydelay = 100
{
SetKeyDelay 100
}
if keydelay = 25
{
SetKeyDelay 25
}
if keydelay = 10
{
SetKeyDelay 10
} ;-----------------------------------------------------END transforming


Send, {Home}{F1}{Home}{F1}


} ;------------ ;------------------------------------------------------------------------END Check
return
} ;----------------------------------------------------------------------------------------------------------------------END











~1::
{ ;--------------------------------------------------------------------------------------------------------------------BEGIN of the main
if switch = 1 ;--------------------------------------------------------------------------BEGIN check if switch is on/off
{
if keydelay = 50 ;--------------------------------------BEGIN transforming keydelay variables to actual keydelays
{
SetKeyDelay 50
}
if keydelay = 100
{
SetKeyDelay 100
}
if keydelay = 25
{
SetKeyDelay 25
}
if keydelay = 10
{
SetKeyDelay 10
} ;-----------------------------------------------------END transforming


Send, 1{F1}1{F1}

 
} ;------------ ;------------------------------------------------------------------------END Check
return
} ;----------------------------------------------------------------------------------------------------------------------END











~2::
{ ;--------------------------------------------------------------------------------------------------------------------BEGIN of the main
if switch = 1 ;--------------------------------------------------------------------------BEGIN check if switch is on/off
{
if keydelay = 50 ;--------------------------------------BEGIN transforming keydelay variables to actual keydelays
{
SetKeyDelay 50
}
if keydelay = 100
{
SetKeyDelay 100
}
if keydelay = 25
{
SetKeyDelay 25
}
if keydelay = 10
{
SetKeyDelay 10
} ;-----------------------------------------------------END transforming


Send, 2{F1}2{F1}

 
} ;------------ ;------------------------------------------------------------------------END Check
return
} ;----------------------------------------------------------------------------------------------------------------------END













~3::
{ ;--------------------------------------------------------------------------------------------------------------------BEGIN of the main
if switch = 1 ;--------------------------------------------------------------------------BEGIN check if switch is on/off
{
if keydelay = 50 ;--------------------------------------BEGIN transforming keydelay variables to actual keydelays
{
SetKeyDelay 50
}
if keydelay = 100
{
SetKeyDelay 100
}
if keydelay = 25
{
SetKeyDelay 25
}
if keydelay = 10
{
SetKeyDelay 10
} ;-----------------------------------------------------END transforming


Send, 3{F1}3{F1}

 
} ;------------ ;------------------------------------------------------------------------END Check
return
} ;----------------------------------------------------------------------------------------------------------------------END












~4::
{ ;--------------------------------------------------------------------------------------------------------------------BEGIN of the main
if switch = 1 ;--------------------------------------------------------------------------BEGIN check if switch is on/off
{
if keydelay = 50 ;--------------------------------------BEGIN transforming keydelay variables to actual keydelays
{
SetKeyDelay 50
}
if keydelay = 100
{
SetKeyDelay 100
}
if keydelay = 25
{
SetKeyDelay 25
}
if keydelay = 10
{
SetKeyDelay 10
} ;-----------------------------------------------------END transforming


Send, 4{F1}4{F1}

 
} ;------------ ;------------------------------------------------------------------------END Check
return
} ;----------------------------------------------------------------------------------------------------------------------END













~5::
{ ;--------------------------------------------------------------------------------------------------------------------BEGIN of the main
if switch = 1 ;--------------------------------------------------------------------------BEGIN check if switch is on/off
{
if keydelay = 50 ;--------------------------------------BEGIN transforming keydelay variables to actual keydelays
{
SetKeyDelay 50
}
if keydelay = 100
{
SetKeyDelay 100
}
if keydelay = 25
{
SetKeyDelay 25
}
if keydelay = 10
{
SetKeyDelay 10
} ;-----------------------------------------------------END transforming


Send, 5{F1}5{F1}

 
} ;------------ ;------------------------------------------------------------------------END Check
return
} ;----------------------------------------------------------------------------------------------------------------------END














~6::
{ ;--------------------------------------------------------------------------------------------------------------------BEGIN of the main
if switch = 1 ;--------------------------------------------------------------------------BEGIN check if switch is on/off
{
if keydelay = 50 ;--------------------------------------BEGIN transforming keydelay variables to actual keydelays
{
SetKeyDelay 50
}
if keydelay = 100
{
SetKeyDelay 100
}
if keydelay = 25
{
SetKeyDelay 25
}
if keydelay = 10
{
SetKeyDelay 10
} ;-----------------------------------------------------END transforming


Send, 6{F1}6{F1}

 
} ;------------ ;------------------------------------------------------------------------END Check
return
} ;----------------------------------------------------------------------------------------------------------------------END



















~7::
{ ;--------------------------------------------------------------------------------------------------------------------BEGIN of the main
if switch = 1 ;--------------------------------------------------------------------------BEGIN check if switch is on/off
{
if keydelay = 50 ;--------------------------------------BEGIN transforming keydelay variables to actual keydelays
{
SetKeyDelay 50
}
if keydelay = 100
{
SetKeyDelay 100
}
if keydelay = 25
{
SetKeyDelay 25
}
if keydelay = 10
{
SetKeyDelay 10
} ;-----------------------------------------------------END transforming


Send, 7{F1}7{F1}

 
} ;------------ ;------------------------------------------------------------------------END Check
return
} ;----------------------------------------------------------------------------------------------------------------------END















~8::
{ ;--------------------------------------------------------------------------------------------------------------------BEGIN of the main
if switch = 1 ;--------------------------------------------------------------------------BEGIN check if switch is on/off
{
if keydelay = 50 ;--------------------------------------BEGIN transforming keydelay variables to actual keydelays
{
SetKeyDelay 50
}
if keydelay = 100
{
SetKeyDelay 100
}
if keydelay = 25
{
SetKeyDelay 25
}
if keydelay = 10
{
SetKeyDelay 10
} ;-----------------------------------------------------END transforming


Send, 8{F1}8{F1}

 
} ;------------ ;------------------------------------------------------------------------END Check
return
} ;----------------------------------------------------------------------------------------------------------------------END












~9::
{ ;--------------------------------------------------------------------------------------------------------------------BEGIN of the main
if switch = 1 ;--------------------------------------------------------------------------BEGIN check if switch is on/off
{
if keydelay = 50 ;--------------------------------------BEGIN transforming keydelay variables to actual keydelays
{
SetKeyDelay 50
}
if keydelay = 100
{
SetKeyDelay 100
}
if keydelay = 25
{
SetKeyDelay 25
}
if keydelay = 10
{
SetKeyDelay 10
} ;-----------------------------------------------------END transforming


Send, 9{F1}9{F1}

 
} ;------------ ;------------------------------------------------------------------------END Check
return
} ;----------------------------------------------------------------------------------------------------------------------END















~0::
{ ;--------------------------------------------------------------------------------------------------------------------BEGIN of the main
if switch = 1 ;--------------------------------------------------------------------------BEGIN check if switch is on/off
{
if keydelay = 50 ;--------------------------------------BEGIN transforming keydelay variables to actual keydelays
{
SetKeyDelay 50
}
if keydelay = 100
{
SetKeyDelay 100
}
if keydelay = 25
{
SetKeyDelay 25
}
if keydelay = 10
{
SetKeyDelay 10
} ;-----------------------------------------------------END transforming


Send, 0{F1}0{F1}

 
} ;------------ ;------------------------------------------------------------------------END Check
return
} ;----------------------------------------------------------------------------------------------------------------------END
