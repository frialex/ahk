#IfWinActive ahk_class Chrome_WidgetWin_1
;;~ means pass the key through to application after capturing it.
;;The a, s, d chord would be a nice way to go.
;;Holding down a and pressing h/j/k/l would act like the arrow key.
;;Holding down s and pressing h/l would move tab back and forward.
;;So the back and forward movement is context sensitive to which of the asd key is pressed.

;The problem with this is that pressing a by it self will insert it,
;AHK doesn't wait until a second key is received 


;;Dev tools
;Console Hide
;^a:: Send {Esc}

;Toggle Devtools
;^d:: Send ^+{j}


#IfwinActive
