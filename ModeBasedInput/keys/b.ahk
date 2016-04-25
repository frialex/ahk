#UseHook

b::
    if MODE=OFF
    {
        Send {b}
    }
    else if MODE=INSERT
    {
        Send {b}
    }
    else if MODE=SELECT
    {
        Send ^+{Left}
    }
    else if MODE=MOVEMENT
    {
        Send ^{Left}
    }
    else if MODE=DELETE
    {
        Send ^{Backspace}
    }
    else if MODE=APP
    {
        ;;TODO: Active Chrome Developer Tools
    }
return
