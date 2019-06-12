code generation
generate

	self baselineString asFileReference exists
		ifTrue: [ self baselineString asFileReference ensureDeleteAll ].
	self baselineString asFileReference ensureCreateDirectory.
	self dumpToFile: (self baselineString asFileReference / '.smalltalk.ston') contents: self templateForSTONFile.
	self dumpToFile: (self baselineString asFileReference / '.travis.yml') contents: self templateForTravisYML.

