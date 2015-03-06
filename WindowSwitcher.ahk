; ===========================================================================
; Run a program or switch to it if already running.
;    Target - Program to run. E.g. Calc.exe or C:\Progs\Bobo.exe
;    WinTitle - Optional title of the window to activate.  Programs like
;       MS Outlook might have multiple windows open (main window and email
;       windows).  This parm allows activating a specific window.
; ===========================================================================
RunOrActivate(Target, WinTitle = "")
{
	; Get the filename without a path
	SplitPath, Target, TargetNameOnly

	Process, Exist, %TargetNameOnly%
	If ErrorLevel > 0
		PID = %ErrorLevel%
	Else
		Run, %Target%, , , PID

	; At least one app (Seapine TestTrack wouldn't always become the active
	; window after using Run), so we always force a window activate.
	; Activate by title if given, otherwise use PID.
	If WinTitle <> 
	{
		SetTitleMatchMode, 2
		WinWait, %WinTitle%, , 3
		TrayTip, , Activating Window Title "%WinTitle%" (%TargetNameOnly%)
		WinActivate, %WinTitle%

        ;Move the cursor to middle of active window
        WinGetActiveStats, Title, Width, Height, X, Y
        MouseMove, Width/2, Height/2, 0
	}
	Else
	{
		WinWait, ahk_pid %PID%, , 3
		TrayTip, , Activating PID %PID% (%TargetNameOnly%)
		WinActivate, ahk_pid %PID%
	}


	SetTimer, RunOrActivateTrayTipOff, 1500
}

; Turn off the tray tip
RunOrActivateTrayTipOff:
	SetTimer, RunOrActivateTrayTipOff, off
	TrayTip
Return



;# is the windows key
;;#p::RunOrActivate("powershell.exe")
;;#-::RunOrActivate("mspaint.exe")
;;#=::RunOrActivate("calc.exe")

F4::F4
;;Control the alt-tab menu..would be nice if
;;there was a way to move up/down also
F4 & ]::AltTab
F4 & [::ShiftAltTab

F4 & h::Send #{Left}
F4 & l::Send #{Right}
F4 & j::Send #{Up}
F4 & k::Send #{Down}

F4 & p::RunOrActivate("powershell.exe")
F4 & o::RunOrActivate("C:\Program Files\Microsoft Office\OFFICE11\OUTLOOK.EXE", "Microsoft Outlook")

F4 & v::RunOrActivate("C:\Program Files (x86)\Microsoft Visual Studio 12.0\Common7\IDE\devenv.exe", "Microsoft Visual")
F4 & c::RunOrActivate("C:\Users\falexan3\AppData\Local\Google\Chrome\Application\chrome.exe", "Google Chrome")
F4 & i::RunOrActivate("C:\Program Files (x86)\Vim\vim74\gvim.exe", "VIM")

