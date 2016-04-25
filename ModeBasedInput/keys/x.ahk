#UseHook

x::
    if MODE=OFF
    {
        Send {x}
    }
    else if MODE=INSERT
    {
        Send {x}
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
