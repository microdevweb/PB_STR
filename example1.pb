XIncludeFile "include/str/str.pbi"
Enumeration 
  #MAIN_FORM
EndEnumeration

Procedure exit()
  End
EndProcedure

OpenWindow(#MAIN_FORM,0,0,800,600,"STR version 1.0 beta 1",#PB_Window_ScreenCentered|#PB_Window_SystemMenu)

Define *str.STR::gadgetString = STR::newGadgetString(10,10,100,30,"Teste")
*str\setFocus()
*str\setPositionOfCursor(3)
BindEvent(#PB_Event_CloseWindow,@exit(),#MAIN_FORM)

Repeat:WaitWindowEvent():ForEver
; IDE Options = PureBasic 5.72 LTS Beta 1 (Windows - x64)
; CursorPosition = 13
; Folding = -
; EnableXP