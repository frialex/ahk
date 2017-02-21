#UseHook

h::
    if MODE=OFF
    {
        Send {h}
    }
    else if MODE=INSERT
    {
        Send {h}
    }
    else if MODE=SELECT
    {
        Send +{Left}
    }
    else if MODE=MOVEMENT
    {
        Send {Left}
    }
    else if MODE=DELETE
    {
        ;Delete a single charactor behind the cursor
        Send {Backspace}
    }
    else if MODE=APP
    {
        ;;TODO: Active OneNote
    }
return
