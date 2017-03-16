;;TODO: Need to keep mode per application


;APP, MOVEMENT, DELETE, SELECT, INSERT, OFF
MODE := "MOVEMENT"



#SingleInstance Force
#Persistent

SendMode Input


SplashTextOn, , , Loading Modal Based Keys
Sleep 1000
SplashTextOff

TTX := 110
TTY := 10

SetTimer, WatchCaret, 40
return
WatchCaret:
    IfNotEqual, MODE, APP
    {
        ToolTip, %MODE%, TTX, TTY
    }
return



#include menu.ahk

#include ChangeTo.ahk

#include RunOrActivate.ahk
#include menu_handlers.ahk
#include Applications.ahk

;;This is available for some quick and frequently used action!
;RShift & Space::
    ;Suspend
    ;ChangeToInsertMode()
;return

LShift & Space::
    ChangeToMovementMode()
return

LShift & RShift::
    Send {Esc}
    ;ChangeToApplicationMode()
return

RShift & a::
    ChangeToApplicationMode()
return

RShift & i::
    ChangeToInsertMode()
return

RShift & d::
    ChangeToDeleteMode()
return

RShift & s::
    ChangeToSelectMode()
return



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
