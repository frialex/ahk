;prevent Send {a} from triggering the a hotkey
#UseHook

a::
    if MODE=INSERT
    {
        Send {a}
    }
    else if MODE=SELECT
    {
        Send ^{a} ;select all
    }
    else if MODE=MOVEMENT
    {
        ChangeToApplicationModeNoMenu()
    }
    else if MODE=DELETE
    {
        ;do nothing
    }
    else if MODE=APP
    {
        ;;TODO: Active OneNote
    }
return
