;{-------------------------------------------
; AUTHOR    : microdev
; DATE      : 2020-03-23
; CLASS     : _str
; VERSION   : 1.0
; PROCESS   : 
;}-------------------------------------------
DeclareModule _STR
	
EndDeclareModule

DeclareModule _GADGET
  ; abstract class
	Structure _members
	  *methods
	  id.l
	  x.l
	  y.l
	  widht.l
	  height.l
	EndStructure
	Declare _super(*this._members,*s_daughter,*E_daughter)
	Macro super()
		_GADGET::_super(*this,?S_MET,?E_MET)
	EndMacro
EndDeclareModule

Module _STR
	
EndModule

XIncludeFile "_strClasses.pbi"
; IDE Options = PureBasic 5.72 LTS Beta 1 (Windows - x64)
; CursorPosition = 15
; Folding = --
; EnableXP