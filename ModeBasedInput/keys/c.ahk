#UseHook

c::
    if MODE=OFF
    {
        Send {c}
    }
    else if MODE=INSERT
    {
        Send {c}
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
        ActivateChrome()
    }
return
