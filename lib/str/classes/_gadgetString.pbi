;{-------------------------------------------
; AUTHOR    : microdev
; DATE      : 2020-03-23
; CLASS     : _gadgetString
; VERSION   : 
; PROCESS   : 
;}-------------------------------------------
Module _GADGETSTRING
	; super constructor
	Procedure _super(*this._members,*s_daughter,*E_daughter)
		With *this
			; allocate memory
			Protected motherLen = ?E_MET - ?S_MET,
				daughterLen = *E_daughter - *s_daughter
			\methods = AllocateMemory(motherLen + daughterLen)
			; empilate methods address
			MoveMemory(?S_MET,\methods,motherLen)
			MoveMemory(*s_daughter,\methods + motherLen,daughterLen)
		EndWith
	EndProcedure

	;{-------------------------------------------
	; CONSTRUCTOR   : new
	; PARAMETER     : 
	;}-------------------------------------------
	Procedure new(x,y,widht,height,value.s = "")
		Protected *this._members = AllocateStructure(_members)
		With *this
		  _GADGET::super()
		  \id = StringGadget(#PB_Any,x,y,widht,height,value)
			ProcedureReturn *this
		EndWith
	EndProcedure
	
	;{-------------------------------------------
  ; METHOD     : setValue
  ; PARAMETERS : 
  ; RETURN     : 
  ; PROCESS    : 
  ;}-------------------------------------------
	Procedure setValue(*this._members,value.s)
		With *this
		  If IsGadget(\id)
		    SetGadgetText(\id,value)
		  EndIf
		EndWith
	EndProcedure
	
	;{-------------------------------------------
  ; METHOD     : getValue
  ; PARAMETERS : 
  ; RETURN     : 
  ; PROCESS    : 
  ;}-------------------------------------------
	Procedure.s getValue(*this._members)
		With *this
		  If IsGadget(\id)
		    ProcedureReturn GetGadgetText(\id)
		  EndIf
		  ProcedureReturn ""
		EndWith
	EndProcedure
		;{-------------------------------------------
	; METHOD     : getLen
	; PARAMETERS : 
	; RETURN     : 
	; PROCESS    : 
	;}-------------------------------------------
	Procedure getLen(*this._members)
		With *this
		  If IsGadget(\id)
		    ProcedureReturn Len(GetGadgetText(\id))
		  EndIf
		  ProcedureReturn 0
		EndWith
	EndProcedure


	;{-------------------------------------------
  ; METHOD     : setPositionOfCursor
  ; PARAMETERS : 
  ; RETURN     : 
  ; PROCESS    : 
  ;}-------------------------------------------
	Procedure setPositionOfCursor(*this._members,position)
	  With *this
	    If IsGadget(\id)
	      CompilerIf #PB_Compiler_OS = #PB_OS_Windows
	        SendMessage_(GadgetID(\id),#EM_SETSEL,position,position)
	      CompilerElseIf #PB_Compiler_OS = #PB_OS_Linux
	        gtk_editable_select_region_(GadgetID(\id), position)
	      CompilerEndIf
	    EndIf
		EndWith
	EndProcedure
	
	;{-------------------------------------------
  ; METHOD     : getPositionofCursor
  ; PARAMETERS : 
  ; RETURN     : 
  ; PROCESS    : 
  ;}-------------------------------------------
	Procedure getPositionOfCursor(*this._members,*startPosition,*endPosition)
	  With *this
	    CompilerIf #PB_Compiler_OS = #PB_OS_Windows
	      SendMessage_(GadgetID(\id),#EM_GETSEL,*startPosition,*endPosition)
	    CompilerEndIf 
		EndWith
	EndProcedure
	
	;{-------------------------------------------
	; METHOD     : selectPosition
	; PARAMETERS : 
	; RETURN     : 
	; PROCESS    : 
	;}-------------------------------------------
	Procedure selectPosition(*this._members,position,number)
	  With *this
	    If IsGadget(\id)
	      CompilerIf #PB_Compiler_OS = #PB_OS_Windows
	        SendMessage_(GadgetID(\id),#EM_SETSEL,position+number,position)
	      CompilerElseIf #PB_Compiler_OS = #PB_OS_Linux
	        gtk_editable_select_region_(GadgetID(\id), position, position + number)
	      CompilerEndIf
	    EndIf
		EndWith
	EndProcedure
	;{-------------------------------------------
	; METHOD     : selectFull
	; PARAMETERS : 
	; RETURN     : 
	; PROCESS    : 
	;}-------------------------------------------
	Procedure selectFull(*this._members)
		With *this
      If IsGadget(\id)
	      CompilerIf #PB_Compiler_OS = #PB_OS_Windows
	        SendMessage_(GadgetID(\id),#EM_SETSEL,Len(GetGadgetText(\id)),0)
	      CompilerElseIf #PB_Compiler_OS = #PB_OS_Linux
	        gtk_editable_select_region_(GadgetID(\id), 0, -1)
	      CompilerEndIf
	    EndIf
		EndWith
	EndProcedure


	




  

	
	DataSection
		S_MET:
		Data.i @setValue()
		Data.i @getValue()
		Data.i @setPositionOfCursor()
		Data.i @getPositionOfCursor()
		Data.i @selectPosition()
		Data.i @getLen()
		Data.i @selectFull()
		E_MET:
	EndDataSection
EndModule
; IDE Options = PureBasic 5.72 LTS Beta 1 (Windows - x64)
; CursorPosition = 91
; FirstLine = 79
; Folding = -----
; EnableXP