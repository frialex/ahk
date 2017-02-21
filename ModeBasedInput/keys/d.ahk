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
        ;Delete a word behind the cursor.  F key acts as opposite
        Send ^{Left}
        Sleep 10
        Send ^+{Right}
        Sleep 10
        Send {Delete}
    }
    else if MODE=APP
    {
        ;;TODO: Active OneNote
    }
return
