#UseHook

e::
    if MODE=INSERT
    {
        Send {e}
    }
    else if MODE=SELECT
    {
        Send +{Right} ;Select include next word
    }
    else if MODE=MOVEMENT
    {
        Send ^{Right} ;Move to next word forward
    }
    else if MODE=DELETE
    {
        Send ^+{Right}{Delete} ;Delete the word in front of cursor
    }
    else if MODE=APP
    {
        RunOrActivate("iexplore.exe")
    }
return
