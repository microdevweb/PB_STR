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
	
	Procedure.l getPosX(*this._members)
	  With *this
	    If IsGadget(\id)
	      ProcedureReturn GadgetX(\id)
	    EndIf
	    ProcedureReturn 0
	  EndWith
	EndProcedure
	
	Procedure setPosX(*this._members,x.l)
	  With *this
	    If IsGadget(\id)
	      ResizeGadget(\id,x,#PB_Ignore,#PB_Ignore,#PB_Ignore)
	    EndIf
	  EndWith
	EndProcedure
	
	Procedure.l getPosY(*this._members)
	  With *this
	    If IsGadget(\id)
	      ProcedureReturn GadgetY(\id)
	    EndIf
	    ProcedureReturn 0
	  EndWith
	EndProcedure
	
	Procedure setPosY(*this._members,y.l)
	  With *this
	    If IsGadget(\id)
	      ResizeGadget(\id,#PB_Ignore,y,#PB_Ignore,#PB_Ignore)
	    EndIf
	  EndWith
	EndProcedure
	
	Procedure.l getWidht(*this._members)
	  With *this
	    If IsGadget(\id)
	      ProcedureReturn GadgetWidth(\id)
	    EndIf
	    ProcedureReturn 0
	  EndWith
	EndProcedure
	
	Procedure setWidht(*this._members,widht.l)
	  With *this
	    If IsGadget(\id)
	      ResizeGadget(\id,#PB_Ignore,#PB_Ignore,widht,#PB_Ignore)
	    EndIf
	  EndWith
	EndProcedure
	
	Procedure.l getHeight(*this._members)
	  With *this
	    If IsGadget(\id)
	      ProcedureReturn GadgetHeight(\id)
	    EndIf
	    ProcedureReturn 0
	  EndWith
	EndProcedure
	
	Procedure setHeight(*this._members,height.l)
	  With *this
	    If IsGadget(\id)
	      ResizeGadget(\id,#PB_Ignore,#PB_Ignore,#PB_Ignore,height)
	    EndIf
	  EndWith
	EndProcedure
	
	Procedure setBackgroundColor(*this._members,color)
	  With *this
	    If IsGadget(\id)
	      SetGadgetColor(\id,#PB_Gadget_BackColor,color)
	    EndIf
	  EndWith
	EndProcedure
	
	Procedure getBackgroundColor(*this._members)
	  With *this
	    If IsGadget(\id)
	      ProcedureReturn GetGadgetColor(\id,#PB_Gadget_BackColor)
	    EndIf
	    ProcedureReturn 0
	  EndWith
	EndProcedure
	
	Procedure setFrontColor(*this._members,color)
	  With *this
	    If IsGadget(\id)
	      SetGadgetColor(\id,#PB_Gadget_FrontColor,color)
	    EndIf
	  EndWith
	EndProcedure
	
	Procedure getFrontColor(*this._members)
	  With *this
	    If IsGadget(\id)
	      ProcedureReturn GetGadgetColor(\id,#PB_Gadget_FrontColor)
	    EndIf
	    ProcedureReturn 0
	  EndWith
	EndProcedure
	
	Procedure setFont(*this._members,font)
	  With *this
	    If IsGadget(\id)
	      setFont(\id,FontID(font))
	    EndIf
	  EndWith
	EndProcedure
	
	Procedure getFont(*this._members)
	  With *this
	    If IsGadget(\id)
	      ProcedureReturn GetGadgetFont(\id)
	    EndIf
	    ProcedureReturn 0
	  EndWith
	EndProcedure
	
	Procedure setAttribute(*this._members,attribute,value)
	  With *this
	    If IsGadget(\id)
	      SetGadgetAttribute(\id,attribute,value)
	    EndIf
	  EndWith
	EndProcedure
	
	Procedure getAttribute(*this._members,attribute)
	  With *this
	    If IsGadget(\id)
	      ProcedureReturn GetGadgetAttribute(\id,attribute)
	    EndIf
	    ProcedureReturn 0
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
		Data.i @getPosX()
		Data.i @setPosX()
		Data.i @getPosY()
		Data.i @setPosX()
    Data.i @getWidht()
    Data.i @setWidht()
    Data.i @getHeight()
    Data.i @setHeight()
    Data.i @disable()
    Data.i @setFocus()
    Data.i @hide()
    Data.i @setBackgroundColor()
    Data.i @getBackgroundColor()
    Data.i @setFrontColor()
    Data.i @getFrontColor()
    Data.i @setFont()
    Data.i @getFont()
    Data.i @setAttribute()
    Data.i @getAttribute()
		E_MET:
	EndDataSection
EndModule
; IDE Options = PureBasic 5.72 LTS Beta 1 (Windows - x64)
; CursorPosition = 205
; FirstLine = 37
; Folding = SAAA+
; EnableXP