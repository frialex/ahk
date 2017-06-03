#UseHook

u::
    if MODE=OFF
    {
        Send {u}
    }
    else if MODE=INSERT
    {
        Send {u}
    }
    else if MODE=SELECT
    {
        ;;Send ^{a}
    }
    else if MODE=MOVEMENT
    {
        Send ^#{Left}
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
