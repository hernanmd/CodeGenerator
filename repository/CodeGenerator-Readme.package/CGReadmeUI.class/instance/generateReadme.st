callbacks
generateReadme
	" Open a dialog to save the contents into a README file "

	| readmeFile |
	readmeFile := self openSaveDialog.
	readmeFile ifNotNil: [ : fileName |
		fileName asFileReference writeStreamDo: [ : stream |
			stream nextPutAll: self textArea textValuePending ] ]