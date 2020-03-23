;{-------------------------------------------
; AUTHOR    : microdev
; DATE      : 2020-03-23
; MODULE    : str
; VERSION   : 1.0
; PROCESS   : 
;}-------------------------------------------
XIncludeFile "../lib/str/_str.pbi"
DeclareModule STR
  Interface _gadget ; abstract class don't use it
    GetX()
		setX(x)
		GetY()
		setY(y)
    getWidht()
    setWidht(width)
    getHeight()
    setHeight(height)
    disable(state.b)
    setFocus()
    hide(state.b)
  EndInterface
EndDeclareModule

Module STR
	
EndModule
; IDE Options = PureBasic 5.72 LTS Beta 1 (Windows - x64)
; CursorPosition = 20
; Folding = -
; EnableXP