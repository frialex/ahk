#UseHook

w::
    if MODE=OFF
    {
        Send {w}
    }
    else if MODE=INSERT
    {
        Send {w}
    }
    else if MODE=SELECT
    {
        ;;Send ^{a}
    }
    else if MODE=MOVEMENT
    {
        ;;Send {Home}
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
