helpers
newTransformer
	"Answer a CGStRBCodeTransformer owned by a CGSmalltalk engine, without binding it to a
	 class. Suitable for testing pure operations (type mapping, name normalization)."

	^ (CGSmalltalk new
		targetClassPrefix: 'CGTst';
		targetClassCategory: 'CGTst-Generated';
		yourself) codeTransformer