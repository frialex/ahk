;APP, MOVEMENT, DELETE, SELECT, OFF
MODE = MOVEMENT

#SingleInstance Force
#Persistent


Menu, ModeMenu, Add, &Movement, MovementHandler
Menu, ModeMenu, Add, &Select, SelectHandler
Menu, ModeMenu, Add, D&elete, DeleteHandler
Menu, ModeMenu, Add ;seperator line

Menu, ApplicationSwitcherMenu, Add, &Vim, MenuHandler
Menu, ApplicationSwitcherMenu, Add, &Powershell, MenuHandler
Menu, ApplicationSwitcherMenu, Add, &OneNote, MenuHandler
Menu, ApplicationSwitcherMenu, Add, Visual&Studio, MenuHandler
Menu, ApplicationSwitcherMenu, Add, &Chrome, MenuHandler


return

SelectHandler:
    MODE=SELECT
    menu, ModeMenu, ToggleCheck, &Movement
    MsgBox Changing mode to SELECT
return

MovementHandler:
    MODE=MOVEMENT
    MsgBox Changing mode to MOVEMENT
return

DeleteHandler:
    MODE=DELETE
    MsgBox Changing mode to DELETE
return

;;not used
    MenuHandler:
    MsgBox You selected %A_ThisMenuItem% from the menu %A_ThisMenu%
    return

^-::Menu, ApplicationSwitcherMenu, Show
LShift & RShift::Menu, ModeMenu, Show


