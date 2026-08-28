tests
testGeneratesValueClassByComposition
	"Req 6: a composition-style generator (not an engine subclass) drives a session to produce
	 a value class with typed accessors and a generated method."

	| gen cls |
	self deny: (CGValueClassGenerator inheritsFrom: CGSmalltalk).
	gen := CGValueClassGenerator new.
	gen context: (CGGenerationContext new
			 prefix: 'CGTst';
			 classCategory: 'CGGeneratedCode-Core';
			 methodCategory: 'generated';
			 yourself).
	gen className: 'Money'.
	gen
		field: 'amount' type: 'number';
		field: 'currency_code' type: 'string'.
	cls := gen generate.
	self assert: cls name equals: #CGTstMoney.
	self assert: (cls instVarNames includes: 'amount').
	self assert: (cls instVarNames includes: 'currencyCode').
	self assert: (cls includesSelector: #currencyCode:).
	self assert: cls new fieldCount equals: 2