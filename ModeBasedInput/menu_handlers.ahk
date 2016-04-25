AppMenuPowershellHandler:
    RunOrActivate("powershell_ise.exe")
return

AppMenuOneNoteHandler:
    RunOrActivate("C:\Program Files (x86)\Microsoft Office\Office15\ONENOTE.EXE")
return

AppMenuVimHandler:
    RunOrActivate("C:\Program Files (x86)\Vim\vim74\gvim.exe", "VIM")
    ChangeToInsertMode()
return

AppMenuVisualStudioHandler:
    RunOrActivate("C:\Program Files (x86)\Microsoft Visual Studio 12.0\Common7\IDE\devenv.exe", "Microsoft Visual")
return

AppMenuChromeHandler:
    RunOrActivate("C:\Users\falexan3\AppData\Local\Google\Chrome\Application\chrome.exe", "Google Chrome")
    ;;RunOrActivate("C:\Users\falexan3\AppData\Local\Google\Chrome\Application\chrome.exe", "Developer Tools")
return

MenuHandler:
    SplashTextOn, , , This should have change the active application
    Sleep 300
    SplashTextOff
return

OffHandler:
    DisableModalMode()
return

InsertHandler:
    ChangeToInsertMode()
return

SelectHandler:
    ChangeToSelectMode()
return

MovementHandler:
    ChangeToMovementMode()
return

DeleteHandler:
    ChangeToDeleteMode()
return

AppHandler:
    ChangeToApplicationMode()
return
