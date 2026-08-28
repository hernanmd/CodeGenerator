importing
promptDirectory
	"Private - Answer a directory chosen by the user. Uses the legacy FileList2/FileList
	 folder selector when present (Squeak/older Pharo), otherwise the Spec folder chooser.
	 Legacy selectors are sent via perform: behind an existence guard so no unimplemented
	 selector is referenced directly."

	(Smalltalk hasClassNamed: #FileList2) ifTrue: [
		^ (Smalltalk at: #FileList2) perform: #modalFolderSelector ].
	(Smalltalk hasClassNamed: #FileList) ifTrue: [
		^ (Smalltalk at: #FileList) perform: #modalFolderSelector ].
	^ SpApplication new selectDirectoryTitle: 'Choose directory'