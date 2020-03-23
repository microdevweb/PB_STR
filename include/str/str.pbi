;{-------------------------------------------
; AUTHOR    : microdev
; DATE      : 2020-03-23
; MODULE    : str
; VERSION   : 1.0
; PROCESS   : 
;}-------------------------------------------
XIncludeFile "../../lib/str/_str.pbi"
DeclareModule STR
  Interface _gadget ; abstract class don't use it
    getPosX()
		setPosX(x)
		getPosY()
		setPosY(y)
    getWidht()
    setWidht(width)
    getHeight()
    setHeight(height)
    disable(state.b)
    setFocus()
    hide(state.b)
    setBackgroundColor(color)
    getBackgroundColor()
    setFrontColor(color)
    getFrontColor()
    setFont()
    getFont(font)
    setAttribute(attribute,value)
    getAttribute(attribute)
  EndInterface
  Interface gadgetString Extends _gadget
    setValue(value.s)
    getValue.s()
    setPositionOfCursor(position)
    getPositionOfCursor(startPosition,endPosition)
    selectPosition(position,number)
    getLen()
    selectFull()
	EndInterface
	Declare newGadgetString(x,y,width,height,value.s = "")
EndDeclareModule

Module STR
  Procedure newGadgetString(x,y,width,height,value.s = "")
    ProcedureReturn _GADGETSTRING::new(x,y,width,height,value)
  EndProcedure
EndModule
; IDE Options = PureBasic 5.72 LTS Beta 1 (Windows - x64)
; CursorPosition = 37
; FirstLine = 7
; Folding = -
; EnableXP