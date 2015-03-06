;; # Windows
;; ! Alt
;; ^ Control
;; + Shift
;; & combine two keys
;; http://ahkscript.org/docs/Hotkeys.htm

#include WindowSwitcher.ahk

#include Vim-Global.ahk

;;----------Program Specific
;;Ensure that #IfWin is on top in each file
#include ChromeDevTools.ahk
#include Explorer.ahk


;;Ctrl + Alt + r => Reload Script
^!r::Reload


;;Layers
;;m = Movement (single, ctrl, home, end) (History)
;;a = Application (selection, window sizing, tab selection)
;;d = deletion (single, ctrl)
;;s = selection (single, ctrl)
;;o = Off

;;set movment by default
layer=m

SC163::
InputBox, layer, What layer do you want to activate?,
keywait, SC163
return

\::InputBox, layer, What layer do you want to activate?,


Ctrl & j::
    if  layer=m
    {
     Send {Down}
    }
    if  layer = a
    {
     Send #{Down}
    }
    if  layer = d
    {
     Send +{Down}{Backspace}
    }
    if   layer = s
    {
     Send +{Down}
    }
    if layer = o
    {
     Send ^{j}
    }
return


Ctrl & k::
    if layer = m
    {
     Send {Up}
    }

    if layer = a
    {
     Send #{Up}
    }

    if layer = d
    {
     Send +{Up}{Backspace}
    }

    if layer = s
    {
     Send +{Up}
    }
    if layer = o
    {
     Send ^{k}
    }
return


