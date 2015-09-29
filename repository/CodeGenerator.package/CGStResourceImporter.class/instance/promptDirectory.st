utility
promptDirectory
	" Private - Answer a FileDirectory for a chosen location "

	^ (Smalltalk hasClassNamed: #FileList2)
		ifTrue: [ ( Smalltalk at: #FileList2 ) modalFolderSelector ]
		ifFalse: [ FileList modalFolderSelector ]			