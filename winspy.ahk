;------------------------------------------------------------------------
; This is an Autohotkey script for spying on windows.
; Tested in Windows 10.
; download: https://www.autohotkey.com/
; source: https://github.com/AutoHotkey/AutoHotkey
; documentation: https://www.autohotkey.com/docs/AutoHotkey.htm
; from: https://www.autohotkey.com/docs/commands/MouseGetPos.htm
;------------------------------------------------------------------------
#Persistent
SetTimer, WatchCursor, 100
return

WatchCursor:
MouseGetPos, xpos, ypos, id, control
WinGetTitle, title, ahk_id %id%
WinGetClass, class, ahk_id %id%
ToolTip, ahk_id %id%`nahk_class %class%`n%title%`nControl: %control%`nX: %xpos% Y: %ypos%
return
;------------------------------------------------------------------------
;
; <|:) Wizard
;
;------------------------------------------------------------------------