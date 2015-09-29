code-generation
buildContext

	| ctxValues |

	ctxValues := self class allInstVarNames collect: [ : iVar |
		iVar -> (self perform: iVar) ].
	^ ctxValues asDictionary.
	