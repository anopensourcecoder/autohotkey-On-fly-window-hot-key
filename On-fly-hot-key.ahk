#NoEnv
SetTitleMatchMode, 2

global var1 := 1, var2 := 2, var3 := 3, var4 := 4, var5 := 5

#+1::
	WinGet, active_id, ID, A
    var1 = %active_id%;
return

#+2::
	WinGet, active_id, ID, A
    var2 = %active_id%;
return

#+3::
	WinGet, active_id, ID, A
    var3 = %active_id%;
return

#+4::
	WinGet, active_id, ID, A
    var4 = %active_id%;
return

#+5::
	WinGet, active_id, ID, A
    var5 = %active_id%;
return


#1::
	WinToggle(var1)	
return

#2::
	WinToggle(var2)	
return

#3::
	WinToggle(var3)	
return

#4::
	WinToggle(var4)	
return

#5::
	WinToggle(var5)	
return



WinToggle(var)
{

	IfWinActive, ahk_id %var%
	{
		WinMinimize, ahk_id %var%
	}
	Else
	{
		WinActivate, ahk_id %var%
	}
}