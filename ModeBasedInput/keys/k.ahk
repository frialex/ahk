#UseHook


RShift & k::

    GetKeyState, shouldDelete, RShift
    if shouldDelete = D
    {
        ;MsgBox deleting the next charactor (RShift is %shouldDelete%)
        Send {Delete}
    }

return

k::
    if MODE=OFF
    {
        Send {k}
    }
    else if MODE=INSERT
    {
        Send {k}
    }
    else if MODE=SELECT
    {
        Send +{Up}
    }
    else if MODE=MOVEMENT
    {
        Send {Up}
    }
    else if MODE=DELETE
    {
        ;;1) Select the string from current to end of line and pass to StrLen
        ;;After everything is done.. move the cursor back to this line, move to end
        ;;and then move left by that ammount
        curClipboard :=  Clipboard
        Send +{End}
        Sleep 10
        Send ^c
        Sleep 10
        lengthOfSelection := StrLen(Clipboard)
        ;MsgBox %lengthOfSelection%  msg=%Clipboard%


        ;;Delete a line above
        Send {Up}
        Send {End}
        Send +{Home}
        Send +{Home}
        Send {Delete}
        Send {Backspace}

        ;;Place cursor back to where we started
        Send {Down}
        Send {End}
        ;MsgBox Going back %lengthOfSelection%
        Send {Left %lengthOfSelection%}
        Clipboard := curClipboard
    }
    else if MODE=APP
    {
        ;;TODO: Active OneNote
    }
return
