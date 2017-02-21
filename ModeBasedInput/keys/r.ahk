#UseHook

r::
    if MODE=OFF
    {
        Send {r}
    }
    else if MODE=INSERT
    {
        Send {r}
    }
    else if MODE=SELECT
    {
        ;;Send ^{a}
    }
    else if MODE=MOVEMENT
    {
        ;ChangeToInsertMode()

        Send {AppsKey}

        ;Input, L, L1        ;;wait for a single keypress(L1) and save that key to L variable
        ;;MsgBox You pressed %L%
        ;Send  %L%   ;;Resend that key through the alt-space menu

        ChangeToMovementMode()
    }
    else if MODE=DELETE
    {
        ;do nothing
    }
    else if MODE=APP
    {
        ;;TODO: Active OneNote
    }
return
