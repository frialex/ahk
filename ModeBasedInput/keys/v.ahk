#UseHook


v::
    if MODE=OFF
    {
        Send {v}
    }
    else if MODE=INSERT
    {
        Send {v}
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
        ActivateVIM()
    }
return
