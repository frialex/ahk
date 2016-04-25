#UseHook

d::
    if MODE=OFF
    {
        Send {d}
    }
    else if MODE=INSERT
    {
        Send {d}
    }
    else if MODE=SELECT
    {
        ;Send ^{a}
    }
    else if MODE=MOVEMENT
    {
        ChangeToDeleteMode()
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
