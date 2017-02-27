
ChangeToInsertMode()
{
    global
    MODE := "INSERT"
    TTX := 80

    Suspend Off
}

ChangeToSelectMode()
{
    global
    MODE := "SELECT"
    TTX := 100

    Suspend Off
}

ChangeToMovementMode()
{
    global
    MODE := "MOVEMENT"
    TTX := 50

    Suspend Off
}

ChangeToDeleteMode()
{
    global
    MODE := "DELETE"
    TTX := 120

    Suspend Off
}

DisableModalMode()
{
    global
    MODE := "OFF"

    Suspend On
}


;;This uses the menu and its & selection to switch app
ChangeToApplicationMode()
{
    global
    MODE := "APP"
    TTX := 140
    
    SplashTextON, , , "MENU MODE"
    Sleep 300
    SplashTextOff

    ToolTip, "[V=Vim] [P=Powershell] [O=OneNote] [S=VisualStudio] [C=Chrome]"
}

;;this uses the binding in x.ahk file to trigger application switch
ChangeToApplicationModeNoMenu()
{
    global
    MODE := "APP"
}
