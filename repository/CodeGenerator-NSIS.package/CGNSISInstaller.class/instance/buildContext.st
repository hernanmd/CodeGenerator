code-generation
buildContext
	" Private - Build Mustache context "

	| ctxValues |
	ctxValues := self class allInstVarNames collect: [ : iVar |
		iVar -> (self perform: iVar) ].
	^ ctxValues asDictionary.
	