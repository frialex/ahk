#UseHook

l::
    if MODE=OFF
    {
        Send {l}
    }
    else if MODE=INSERT
    {
        Send {l}
    }
    else if MODE=SELECT
    {
        Send +{Right}
    }
    else if MODE=MOVEMENT
    {
        Send {Right}
    }
    else if MODE=DELETE
    {
        ;Delete a single charactor in front of the cursor
        Send {Right}
        Sleep 20
        Send {BackSpace}
    }
    else if MODE=APP
    {
        ;;TODO: Active OneNote
    }
return
