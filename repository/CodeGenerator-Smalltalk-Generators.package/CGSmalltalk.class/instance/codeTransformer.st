accessing
codeTransformer

	^ codeTransformer
		ifNil: [ codeTransformer := self defaultCodeTransformerClass for: self ]