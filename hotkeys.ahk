;------------------------------------------------------------------------
; This is an Autohotkey script for making windows transparent using hot keys.
; Tested in Windows 7 and Windows 10.
; download: https://www.autohotkey.com/
; source: https://github.com/AutoHotkey/AutoHotkey
; documentation: https://www.autohotkey.com/docs/AutoHotkey.htm
; transparency: https://www.autohotkey.com/docs/commands/WinGet.htm
; tooltip: https://www.autohotkey.com/docs/commands/ToolTip.htm
;------------------------------------------------------------------------
; Win+G current settings popup context
#G::
MouseGetPos, , , id, control
WinGet, transparency, Transparent, ahk_id %id%
WinGet, color, TransColor, ahk_id %id%
ToolTip Translucency:`t%transparency%`nTransColor:`t%color%
SetTimer, RemoveToolTip, -5000
return

RemoveToolTip:
ToolTip
return
;------------------------------------------------------------------------
; Win+T increments transparency by 1% wrapping around
#T::
DetectHiddenWindows, On
WinGet, transparency, Transparent, A
;if !(transparency)
;    transparency = 255
newtrans := transparency - 1
if newtrans > 0
{
    WinSet, Transparent, %newtrans%, A

}
else
{
    WinSet, Transparent, 255, A
    WinSet, Transparent, OFF, A
}
return
;------------------------------------------------------------------------
; Win+S decrements transparency by 1% wrapping around
#S::
DetectHiddenWindows, On
WinGet, transparency, Transparent, A
value := transparency + 1
if value > 0
{
    WinSet, Transparent, %value%, A
}
else
{
    WinSet, Transparent, 255, A
    WinSet, Transparent, OFF, A
}
return
;------------------------------------------------------------------------
; Win+1 sets transparency to 90%
#1::
DetectHiddenWindows, On
WinSet, TransColor, Gray 25, A
return
;------------------------------------------------------------------------
; Win+2 sets transparency to 80%
#2::
DetectHiddenWindows, On
WinSet, TransColor, Gray 50, A
return
;------------------------------------------------------------------------
; Win+3 sets transparency to 70%
#3::
DetectHiddenWindows, On
WinSet, TransColor, Gray 75, A
return
;------------------------------------------------------------------------
; Win+4 sets transparency to 60%
#4::
DetectHiddenWindows, On
WinSet, TransColor, Gray 100, A
return
;------------------------------------------------------------------------
; Win+5 sets transparency to 50%
#5::
DetectHiddenWindows, On
WinSet, TransColor, Gray 125, A
return
;------------------------------------------------------------------------
; Win+6 sets transparency to 40%
#6::
DetectHiddenWindows, On
WinSet, TransColor, Gray 150, A
return
;------------------------------------------------------------------------
; Win+7 sets transparency to 30%
#7::
DetectHiddenWindows, On
WinSet, TransColor, Gray 175, A
return
;------------------------------------------------------------------------
; Win+8 sets transparency to 20%
#8::
DetectHiddenWindows, On
WinSet, TransColor, Gray 200, A
return
;------------------------------------------------------------------------
; Win+9 sets transparency to 10%
#9::
DetectHiddenWindows, On
WinSet, TransColor, Gray 225, A
return
;------------------------------------------------------------------------
; Win+0 sets transparency to 0%
#0::
DetectHiddenWindows, On
WinSet, TransColor, Gray 255, A
return
;------------------------------------------------------------------------
; Win+O turn off transparency
#O::
WinSet, Transparent, 255, A
WinSet, Transparent, OFF, A
return
;------------------------------------------------------------------------
;
; <|:) Wizard
;
;------------------------------------------------------------------------