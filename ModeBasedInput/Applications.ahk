ActivateVIM()
{
    RunOrActivate("C:\Program Files (x86)\Vim\vim74\gvim.exe", "VIM")
    ChangeToInsertMode()
}


ActivateVisualStudio()
{
    RunOrActivate("C:\Program Files (x86)\Microsoft Visual Studio 12.0\Common7\IDE\devenv.exe", "Microsoft Visual")
    ChangeToInsertMode()
}

ActivateOneNote()
{
    RunOrActivate("C:\Program Files (x86)\Microsoft Office\Office15\ONENOTE.EXE")
    ChangeToInsertMode()
}

ActivatePowershell()
{
    RunOrActivate("powershell_ise.exe")
    ChangeToInsertMode()
}

ActivateChrome()
{
    RunOrActivate("C:\Users\falexan3\AppData\Local\Google\Chrome\Application\chrome.exe", "Google Chrome")
    ChangeToInsertMode()
}
