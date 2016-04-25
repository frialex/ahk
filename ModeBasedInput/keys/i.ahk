#UseHook

i::
    if MODE=INSERT
    {
        Send {i}
    }
    else if MODE=SELECT
    {
        ChangeToInsertMode()
    }
    else if MODE=MOVEMENT
    {
        ChangeToInsertMode()
    }
    else if MODE=DELETE
    {
        ChangeToInsertMode()
    }
    else if MODE=APP
    {
        ChangeToInsertMode()
    }
return
