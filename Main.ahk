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
OFF         = 0
;;o = Off
MOVEMENT    = 1
;;m = Movement (single, ctrl, home, end) (History)
APP         = 2
;;a = Application (selection, window sizing, tab selection)
DELETE      = 3
;;d = deletion (single, ctrl)
SELECT      = 4
;;s = selection (single, ctrl)


;;set movment by default
layer=m

SC163::
    InputBox, layer, What layer do you want to activate?,
    keywait, SC163
return

Ctrl & `::
    InputBox, layer, What layer do you want to activate?
return

Ctrl & '::
    if layer = m
    {
        layer = a
    } else {
        layer = m
    }
return

RShift & a::
    layer = a
return
RShift & d::
    layer = d
return
RShift & s::
    layer = s
return
RShift & q::
    layer = o
return
RShift & LShift::
    layer = m
return



Ctrl & j::
    if          layer=m
    {
     Send {Down}
    }
    else if     layer = a
    {
     Send #{Down}
    }
    else if     layer = d
    {
     Send +{Down}{Backspace}
    }
    else if     layer = s
    {
     Send +{Down}
    }
    else
    {
     Send ^{j}
    }
return

Ctrl & k::
    if      layer = m
    {
     Send {Up}
    }
    else if layer = a
    {
     Send #{Up}
    }
    else if layer = d
    {
     Send +{Up}{Backspace}
    }
    else if layer = s
    {
     Send +{Up}
    }
    else
    {
     Send ^{k}
    }
return

Ctrl & h::
    if          layer=m
    {
     Send {Left}
    }
    else if     layer = a
    {
     Send #{Left}
    }
    else if     layer = d
    {
     Send {Backspace}
    }
    else if     layer = s
    {
     Send +{Left}
    }
    else
    {
     Send ^{h}
    }
return

Ctrl & l::
    if          layer=m
    {
     Send {Right}
    }
    else if     layer = a
    {
     Send #{Right}
    }
    else if     layer = d
    {
     Send {Delete}
    }
    else if     layer = s
    {
     Send +{Right}
    }
    else
    {
     Send ^{l}
    }
return

Ctrl & a::
    if layer = m
    {
        Send {Home}
    }
    else if layer = s
    {
        Send +{Home}
    }
    else
    {
        Send ^{a}
    }
return

Ctrl & e::
    if      layer = m
    {
        Send {End}
    }
    else if layer = s
    {
        Send +{End}
    }
    else
    {
        Send ^{e}
    }
return

Ctrl & b::
    if      layer = m
    {
        Send ^{Left}
    }
    else if layer = s
    {
        Send ^+{Left}
    }
    else if layer = d
    {
        Send ^{Backspace}
    }
    else
    {
        Send ^{b}
    }
return

Ctrl & f::
    if layer = m
    {
        Send ^{Right}
    }
    else if layer = s
    {
        Send ^+{Right}
    }
    else if layer = d
    {
        Send ^{Delete}
    }
    else
    {
        Send ^{f}
    }
return

Ctrl & p::
    if layer=a
    {
        RunOrActivate("powershell.exe")
        layer = o
    }
    else
    {
        Send ^{p}
    }
return
Ctrl & o::
    if layer=a
    {
        RunOrActivate("C:\Program Files\Microsoft Office\OFFICE11\OUTLOOK.EXE", "Microsoft Outlook")
        layer = o
    }
    else
    {
        Send ^{o}
    }
return

Ctrl & v::
    if layer=a
    {
        RunOrActivate("C:\Program Files (x86)\Microsoft Visual Studio 12.0\Common7\IDE\devenv.exe", "Microsoft Visual")
        layer = o
    }
    else
    {
        Send ^{v}
    }
return

Ctrl & c::
    if layer=a
    {
        RunOrActivate("C:\Users\falexan3\AppData\Local\Google\Chrome\Application\chrome.exe", "Google Chrome")
        layer = o
    }
    else
    {
        Send ^{c}
    }
return

Ctrl & i::
    if layer=a
    {
        RunOrActivate("C:\Program Files (x86)\Vim\vim74\gvim.exe", "VIM")
        layer = o
    }
    else
    {
        Send ^{i}
    }
return
