#IfWinNotActive ahk_class Vim
;;1st option: ~ to pass 'a' to program. Without it the 'a' key is unusable
;;problem: when a is held down it will keep passing it through.
;;~a & j:: MsgBox "j pressed while a was held down"

;;2nd option: allow key to go through when its released and second key in chord has not been pressed
F1::F1
F1 & h::Send {Left}
F1 & j::Send {Down}
F1 & k::Send {Up}
F1 & l::Send {Right}

;;TODO: Idea for toggle then single key prefix based movement
;;Press F1, then Press F3 to toggle shift select
;;Press F1, then press F2 to toggle deletions


;;Control + Arrow Key
F2::F2
F2 & h::Send ^{Left}
F2 & l::Send ^{Right}
;;Home and End
F2 & j::Send +{Down}
F2 & k::Send +{Up}

;;Control + Shift + Arrow Key
F3::F3
F3 & h::Send ^+{Left}
F3 & l::Send ^+{Right}

F3 & j::Send +{Home}
F3 & k::Send +{End}

;;Delete movement
F1 & F2::Send {Backspace}
F1 & F3::Send {Delete}

;;Control + Delete
F4 & F2::Send ^{Backspace}
F4 & F3::Send ^{Delete}



#IfWinNotActive

