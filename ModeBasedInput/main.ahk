;APP, MOVEMENT, DELETE, SELECT, INSERT, OFF
MODE := "MOVEMENT"

;;TODO: after alt+space menu is requested, disable key binding,
;;      and after a key is pressed put in Movement mode

;;TODO: Need a faster way to switch between modes.
        ;;opening the menu causes applicatons to acknolodge
        ;;the keypress, and that causes state problems

;;TODO: need key for right click and alt+space menu

;;TODO: Need to keep mode per application

#SingleInstance Force
#Persistent

SendMode Input


SplashTextOn, , , Loading Modal Based Keys
Sleep 1000
SplashTextOff


SetTimer, WatchCaret, 100
return
WatchCaret:
    IfNotEqual, MODE, APP
    {
        ToolTip, %MODE%
    }
return



#include menu.ahk

#include ChangeTo.ahk

#include RunOrActivate.ahk
#include menu_handlers.ahk

;;This is available for some quick and frequently used action!
;RShift & Space::
    ;Suspend
    ;ChangeToInsertMode()
;return

LShift & Space::
    Suspend
    ;;DisableModalMode()
    ;;Menu, ModeMenu, Show
    ChangeToMovementMode()
return

;;Using different mapping from <c-_> to ensure that windows+arrow keys can be used via hjkl
LShift & RShift::
    ;;DisableModalMode()
    ChangeToApplicationMode()
return

RShift & i::
    Suspend
    ChangeToInsertMode()
return

RShift & d::
    ChangeToDeleteMode()
return

RShift & s::
    ChangeToSelectMode()
return


;; not sure why this wont work => ::ui::Menu, MenuMode, Show

#include keys/a.ahk
#include keys/b.ahk
#include keys/c.ahk
#include keys/d.ahk
#include keys/e.ahk
#include keys/f.ahk
#include keys/g.ahk
#include keys/h.ahk
#include keys/i.ahk
#include keys/j.ahk
#include keys/k.ahk
#include keys/l.ahk
#include keys/m.ahk
#include keys/n.ahk
#include keys/o.ahk
#include keys/p.ahk
#include keys/q.ahk
#include keys/r.ahk
#include keys/s.ahk
#include keys/t.ahk
#include keys/u.ahk
#include keys/v.ahk
#include keys/w.ahk
#include keys/x.ahk
#include keys/y.ahk
#include keys/z.ahk

#include keys/alt.ahk

#include VimMovement.ahk
