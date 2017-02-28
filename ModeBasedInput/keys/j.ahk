#UseHook
SendMode Input

;; Cant use an if in the j:: block bellow because capital J key does not send shift with it..
RShift & j::

    GetKeyState, shouldDelete, RShift
    if shouldDelete = D
    {
        ;MsgBox deleting the last charactor back (%shouldDelete%)
        Send {Backspace}
    }

return

j::
    if MODE=OFF
    {
        Send {j}
    }
    else if MODE=INSERT
    {
        Send {j}
    }
    else if MODE=SELECT
    {
        Send +{Down}
    }
    else if MODE=MOVEMENT
    {
        Send {Down}
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


        ;;Delete a line bellow
        Send {Down}
        Send {End}
        Send +{Home}
        Send +{Home}
        Send {Delete}
        Send {Backspace}

        ;;Place cursor back to where we started
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

