utilities
unquote: fileTypePattern
	" Replace invalid quoting for Smalltalk source from files matching fileTypePattern in the library subdirectory "

	| files currFile directory |

	directory := fullPath pathString asFileReference.
	files := directory fileNamesMatching: fileTypePattern.
	files do: [ : each | currFile := directory fileNamed: each.
              [ currFile atEnd ]
                whileFalse: [ 
			     (currFile findString: '''') > 0
                        ifTrue: [ currFile nextPut: $" ].
				 currFile next ].
		currFile close ].