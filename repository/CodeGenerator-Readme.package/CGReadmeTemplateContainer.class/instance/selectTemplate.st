accessing
selectTemplate
	" Private - Open a template selector window. Answer the <FileReference> of the selected template "
	
	^ (CGReadmeTmplSelectorUI 
		newWithOwner: self)
			openModal