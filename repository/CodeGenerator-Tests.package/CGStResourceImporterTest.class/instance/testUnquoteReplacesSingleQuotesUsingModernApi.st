tests
testUnquoteReplacesSingleQuotesUsingModernApi
	"Req 8: unquote: replaces single quotes with double quotes in matching files, using the
	 current FileReference filesMatching: API (regression for the removed fileNamesMatching:)."

	| dir file importer result |
	dir := (FileLocator temp / 'cgtst-unquote-test') ensureCreateDirectory.
	[ file := dir / 'sample.txt'.
	  file writeStreamDo: [ :s | s nextPutAll: 'a ''quoted'' word' ].
	  importer := CGStResourceImporter new.
	  importer instVarNamed: 'fullPath' put: dir.
	  importer unquote: '*.txt'.
	  result := file readStreamDo: [ :s | s upToEnd ].
	  self assert: result equals: 'a "quoted" word' ]
		ensure: [ dir ensureDeleteAll ]