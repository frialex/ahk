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
        ;Send {Home}
    }
    else if MODE=DELETE
    {
        ;do nothing
    }
    else if MODE=APP
    {
        ActivateOneNote()
    }
return
