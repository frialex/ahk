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
        ;do nothing
    }
    else if MODE=APP
    {
        ;;TODO: Active OneNote
    }
return
