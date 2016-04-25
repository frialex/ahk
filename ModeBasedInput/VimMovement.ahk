$::
    if MODE=INSERT
    {
        Send {$}
    }
    else if MODE=MOVEMENT
    {
        Send {End}
    }
    else if MODE=SELECT
    {
        Send +{End}
    }

return

0::
    if MODE=INSERT
    {
        Send {0}
    }
    else if MODE=MOVEMENT
    {
        Send {Home}
    }
    else if MODE=SELECT
    {
        Send +{Home}
    }
return
