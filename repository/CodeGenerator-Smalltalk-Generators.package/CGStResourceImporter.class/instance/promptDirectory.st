utilities
promptDirectory
	" Private - Answer a FileDirectory for a chosen location "

	^ (Smalltalk hasClassNamed: #FileList2)
		ifTrue: [ ( Smalltalk at: #FileList2 ) modalFolderSelector ]
		ifFalse: [ 
			(Smalltalk hasClassNamed: #FileList)
				ifTrue:[ (Smalltalk globals at: #FileList) modalFolderSelector ]
				ifFalse: [ SpApplication new selectDirectoryTitle: 'Choose directory' ]	]		