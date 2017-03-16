#UseHook

s::
    if MODE=OFF
    {
        Send {s}
    }
    else if MODE=INSERT
    {
        Send {s}
    }
    else if MODE=SELECT
    {
        ;;Send ^{a}
    }
    else if MODE=MOVEMENT
    {
        ChangeToSelectMode()
    }
    else if MODE=DELETE
    {
        ;do nothing
    }
    else if MODE=APP
    {
        ActivateVisualStudio()
    }
return
