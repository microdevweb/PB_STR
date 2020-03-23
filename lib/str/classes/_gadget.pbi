;{-------------------------------------------
; AUTHOR    : microdev
; DATE      : 2020-03-23
; CLASS     : _gadget
; VERSION   : 1.0
; PROCESS   : 
;}-------------------------------------------
Module _GADGET
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
	
	Procedure.l GetX(*this._members)
	  With *this
	    ProcedureReturn \x
	  EndWith
	EndProcedure
	
	Procedure setX(*this._members,x.l)
	  With *this
	    \x = x
	  EndWith
	EndProcedure
	
	Procedure.l GetY(*this._members)
	  With *this
	    ProcedureReturn \y
	  EndWith
	EndProcedure
	
	Procedure setY(*this._members,y.l)
	  With *this
	    \y = y
	  EndWith
	EndProcedure
	
	Procedure.l getWidht(*this._members)
	  With *this
	    ProcedureReturn \widht
	  EndWith
	EndProcedure
	
	Procedure setWidht(*this._members,widht.l)
	  With *this
	    \widht = widht
	  EndWith
	EndProcedure
	
	Procedure.l getHeight(*this._members)
	  With *this
	    ProcedureReturn \height
	  EndWith
	EndProcedure
	
	Procedure setHeight(*this._members,height.l)
	  With *this
	    \height = height
	  EndWith
	EndProcedure
	
	;{-------------------------------------------
	; METHOD     : disable
	; PARAMETERS : state.b
	; RETURN     : void
	; PROCESS    : 
	;}-------------------------------------------
	Procedure disable(*this._members,state.b)
		With *this
		  If IsGadget(\id)
		    DisableGadget(\id,state)
		  EndIf
		EndWith
	EndProcedure
	
	;{-------------------------------------------
  ; METHOD     : setFocus
  ; PARAMETERS : void
  ; RETURN     : void
  ; PROCESS    : 
  ;}-------------------------------------------
	Procedure setFocus(*this._members)
	  With *this
	    If IsGadget(\id)
	      SetActiveGadget(\id)
	    EndIf
	  EndWith
	EndProcedure

	;{-------------------------------------------
	; METHOD     : hide
	; PARAMETERS : 
	; RETURN     : 
	; PROCESS    : 
	;}-------------------------------------------
	Procedure hide(*this._members,state.b)
		With *this
		  If IsGadget(\id)
		    HideGadget(\id,state)
		  EndIf
		EndWith
	EndProcedure


	DataSection
		S_MET:
		Data.i @GetX()
		Data.i @setX()
		Data.i @GetY()
		Data.i @setY()
    Data.i @getWidht()
    Data.i @setWidht()
    Data.i @getHeight()
    Data.i @setHeight()
    Data.i @disable()
    Data.i @setFocus()
    Data.i @hide()
		E_MET:
	EndDataSection
EndModule
; IDE Options = PureBasic 5.72 LTS Beta 1 (Windows - x64)
; CursorPosition = 124
; FirstLine = 92
; Folding = ----
; EnableXP