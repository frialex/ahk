#UseHook

h::
    if MODE=OFF
    {
        Send {h}
    }
    else if MODE=INSERT
    {
        Send {h}
    }
    else if MODE=SELECT
    {
        Send +{Left}
    }
    else if MODE=MOVEMENT
    {
        Send {Left}
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
