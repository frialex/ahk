#UseHook

n::
    if MODE=OFF
    {
        Send {n}
    }
    else if MODE=INSERT
    {
        Send {n}
    }
    else if MODE=SELECT
    {
        ;Send ^{a}
    }
    else if MODE=MOVEMENT
    {
        Send {PgDn}
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
