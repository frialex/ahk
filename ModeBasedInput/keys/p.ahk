#UseHook

p::
    if MODE=OFF
    {
        Send {p}
    }
    else if MODE=INSERT
    {
        Send {p}
    }
    else if MODE=SELECT
    {
        ;;Send ^{a}
    }
    else if MODE=MOVEMENT
    {
        Send {PgUp}
    }
    else if MODE=DELETE
    {
        ;do nothing
    }
    else if MODE=APP
    {
        RunOrActivate("powershell_ise.exe")
    }
return
