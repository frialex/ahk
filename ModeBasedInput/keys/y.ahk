#UseHook

y::
    if MODE=OFF
    {
        Send {y}
    }
    else if MODE=INSERT
    {
        Send {y}
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
