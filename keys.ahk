#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

#usehook        ;directive prevents binds from triggering each other
;#IfWinNotActive ahk_class ConsoleWindowClass
;#IfWinNotActive

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

^a::send {Home}
!a::send ^a

^c::return      ;deactivate old combo
!c::send ^c     ;alt+c sends ctrl+c

^v::return
!v::send ^v

^x::return
!x::send ^x

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
; Undo/Redo
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

^z::return
!z::send ^z

^+z::return
!+z::send ^y

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
; Emacs commands
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

^k::send +{End}{Delete}

^e::send {End}

^d::send {Delete}

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

!q::send !{f4}

^n::return
!n::send ^n

^+n::return
!+n::send ^+n

^o::return
!o::send ^o

^s::return
!s::send ^s

^+s::return
!+s::send ^+s

^t::return
!t::send ^t

^w::return
!w::send ^w

^r::return
!r::send ^r

^f::return
!f::send ^f

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
; Mouse Zoom
; - Download AeroZoom on Choco and set the key to be Alt for mac-like zooming
; - Go to custom hotkeys and disable left + right & right + left

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;;; Right Click
;;; - By holding Ctrl and left clicking
;;; - Ctrl clicks are now Alt-clicks

^LButton::
MouseClick, right
return

!LButton::
Send, {Control down}
MouseClick, left
Send, {Control up}
return

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
; Code-Related
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

^/::return
!/::send ^/

^+f::return
!+f::send ^+f
