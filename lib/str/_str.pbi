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
	EndStructure
	Declare _super(*this._members,*s_daughter,*E_daughter)
	Macro super()
		_GADGET::_super(*this,?S_MET,?E_MET)
	EndMacro
EndDeclareModule

DeclareModule _GADGETSTRING
	Structure _members Extends _GADGET::_members
		
	EndStructure
	Declare _super(*this._members,*s_daughter,*E_daughter)
	Macro super()
		_GADGETSTRING::_super(*this,?S_MET,?E_MET)
	EndMacro
	Declare new(x,y,widht,height,value.s = "")
EndDeclareModule


Module _STR
	
EndModule

XIncludeFile "_strClasses.pbi"
; IDE Options = PureBasic 5.72 LTS Beta 1 (Windows - x64)
; CursorPosition = 25
; FirstLine = 4
; Folding = --
; EnableXP