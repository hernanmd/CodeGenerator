transforming
defineGetterMethod
	| selector definingClass commentString |

	definingClass := self definingClass.
	selector := self safeMethodNameFor: definingClass basedOn: variableName asString.
	commentString := self buildGetterComment: selector.
	definingClass 
		compile: ('<1s><r><t><2s><r><r><t>^ <3s>' 
			expandMacrosWith: selector 
			with: commentString
			with: variableName)
		classified: #(#accessing).
	^selector