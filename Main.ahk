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

Ctrl & '::InputBox, layer, What layer do you want to activate?,
Ctrl & a::
    layer=m
return


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


Ctrl & h::
    if  layer=m
    {
     Send {Left}
    }
    if  layer = a
    {
     Send #{Left}
    }
    if  layer = d
    {
     Send +{Left}{Backspace}
    }
    if   layer = s
    {
     Send +{Left}
    }
    if layer = o
    {
     Send ^{h}
    }
return

Ctrl & l::
    if  layer=m
    {
     Send {Right}
    }
    if  layer = a
    {
     Send #{Right}
    }
    if  layer = d
    {
     Send +{Right}{Backspace}
    }
    if   layer = s
    {
     Send +{Right}
    }
    if layer = o
    {
     Send ^{l}
    }
return

Ctrl & a::
    if layer = m
    {
        Send {Home}
    }
return

Ctrl & e::
    if layer = m
    {
        Send {End}
    }
return

Ctrl & p::
    if layer=a
    {
        RunOrActivate("powershell.exe")
        layer = m
    }
return
Ctrl & o::
    if layer=a
    {
        RunOrActivate("C:\Program Files\Microsoft Office\OFFICE11\OUTLOOK.EXE", "Microsoft Outlook")
        layer = m
    }
return

Ctrl & v::
    if layer=a
    {
        RunOrActivate("C:\Program Files (x86)\Microsoft Visual Studio 12.0\Common7\IDE\devenv.exe", "Microsoft Visual")
        layer = m
    }
return

Ctrl & c::
    if layer=c
    {
        RunOrActivate("C:\Users\falexan3\AppData\Local\Google\Chrome\Application\chrome.exe", "Google Chrome")
        layer = m
    }
return

Ctrl & i::
    if layer=a
    {
        RunOrActivate("C:\Program Files (x86)\Vim\vim74\gvim.exe", "VIM")
        layer = m
    }
return
