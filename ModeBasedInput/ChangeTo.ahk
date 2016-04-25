
ChangeToInsertMode()
{
    global
    MODE := "INSERT"

    Suspend Off

    SplashTextON, , , INSERT MODE
    Sleep 100
    SplashTextOff
}

ChangeToSelectMode()
{
    global
    MODE := "SELECT"

    Suspend Off

    SplashTextOn, , , "SELECT MODE"
    Sleep 100
    SplashTextOff
}

ChangeToMovementMode()
{
    global
    MODE := "MOVEMENT"

    Suspend Off

    SplashTextOn, , , "MOVEMENT MODE"
    Sleep 100
    SplashTextOff
}

ChangeToDeleteMode()
{
    global
    MODE := "DELETE"

    Suspend Off

    SplashTextOn, , , "DELETE MODE"
    Sleep 100
    SplashTextOff
}

DisableModalMode()
{
    global
    MODE := "OFF"

    Suspend On

    ;SplashTextOn, , , "DISABLING KEYHOOKS"
    ;SplashTextOff
}


;;This uses the menu and its & selection to switch app
ChangeToApplicationMode()
{
    global
    MODE := "APP"

    Suspend Off
    Menu, ApplicationSwitcherMenu, Show
}
;;this uses the binding in x.ahk file to trigger application switch
ChangeToApplicationModeNoMenu()
{
    global
    MODE := "APP"
}
