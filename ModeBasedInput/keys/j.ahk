#UseHook

j::
    if MODE=OFF
    {
        Send {j}
    }
    else if MODE=INSERT
    {
        Send {j}
    }
    else if MODE=SELECT
    {
        Send +{Down}
    }
    else if MODE=MOVEMENT
    {
        Send {Down}
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
