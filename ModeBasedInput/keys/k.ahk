#UseHook

k::
    if MODE=OFF
    {
        Send {k}
    }
    else if MODE=INSERT
    {
        Send {k}
    }
    else if MODE=SELECT
    {
        Send +{Up}
    }
    else if MODE=MOVEMENT
    {
        Send {Up}
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
