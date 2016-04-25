#UseHook

f::
    if MODE=OFF
    {
        Send {f}
    }
    else if MODE=INSERT
    {
        Send {f}
    }
    else if MODE=SELECT
    {
        Send ^+{Right}
    }
    else if MODE=MOVEMENT
    {
        Send ^{Right}
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
