testing
isValidIdentifier: aString
	"Answer a <Boolean>: true when aString is a legal Smalltalk identifier (non-empty,
	 starts with a letter or underscore, then letters/digits/underscores)."

	^ aString notEmpty and: [
			  (aString first isLetter or: [ aString first = $_ ]) and: [
					  aString allSatisfy: [ :c |
						  c isLetter or: [ c isDigit or: [ c = $_ ] ] ] ] ]