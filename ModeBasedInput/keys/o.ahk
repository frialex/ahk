#UseHook

o::
    if MODE=OFF
    {
        Send {o}
    }
    else if MODE=INSERT
    {
        Send {o}
    }
    else if MODE=SELECT
    {
        ;Send ^{a}
    }
    else if MODE=MOVEMENT
    {
        Send ^#{Right}
    }
    else if MODE=DELETE
    {
        ;do nothing
    }
    else if MODE=APP
    {
        RunOrActivate("C:\Program Files (x86)\Microsoft Office\Office15\ONENOTE.EXE")
    }
return
