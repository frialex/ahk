#UseHook

m::
    if MODE=OFF
    {
        Send {m}
    }
    else if MODE=INSERT
    {
        Send {m}
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
        ;do nothing
    }
return
