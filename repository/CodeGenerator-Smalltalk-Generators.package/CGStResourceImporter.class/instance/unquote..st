importing
unquote: fileTypePattern
	"Replace single quotes with double quotes in the source of files matching fileTypePattern
	 in the library directory. Uses the current FileSystem API: read each matching file's
	 contents, substitute the quotes, and write it back."

	| directory |
	directory := fullPath pathString asFileReference.
	(directory filesMatching: fileTypePattern) do: [ :fileRef |
			| contents |
			contents := fileRef readStreamDo: [ :in | in upToEnd ].
			contents := contents
				            copyReplaceAll: (String with: $')
				            with: (String with: $").
			fileRef writeStreamDo: [ :out | out nextPutAll: contents ] ]