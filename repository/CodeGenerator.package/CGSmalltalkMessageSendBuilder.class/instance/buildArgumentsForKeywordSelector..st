accessing
buildArgumentsForKeywordSelector: aSymbol
	" Answer a <Collection> with arguments matching aSymbol "

"	| argSize |
	argSize := (aSymbol findTokens: $:) size.
	^ (Generator on: [ : g | argSize timesRepeat: [ g yield: nil ] ]) upToEnd.
	"
	^ ': nil'