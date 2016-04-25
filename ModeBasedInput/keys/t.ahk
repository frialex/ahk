#UseHook

t::
    if MODE=OFF
    {
        Send {t}
    }
    else if MODE=INSERT
    {
        Send {t}
    }
    else if MODE=SELECT
    {
        ;;Send ^{a}
    }
    else if MODE=MOVEMENT
    {
        Send !{Space}
        ;;it should to go back in to movement mode right after selecting because
        ;;most of the options require the use of arrow keys
        ChangeToInsertMode()

        Input, L, L1        ;;wait for a single keypress(L1) and save that key to L variable
        ;MsgBox You pressed %L%
        Send !{Space} %L%   ;;Resend that key through the alt-space menu
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
