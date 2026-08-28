tests - regression
testFrameworkHasNoUnimplementedSends
	"Whole-framework regression: no method in the CodeGenerator packages sends a selector
	 with zero implementors in the image (guards against reintroducing bit-rot)."

	| offenders |
	offenders := OrderedCollection new.
	#( 'CodeGenerator' 'CodeGenerator-Pharo8' 'CodeGenerator-Smalltalk-Core'
	   'CodeGenerator-Smalltalk-Generators'
	   'CodeGenerator-OpenAPI' ) do: [ :pn |
			(PackageOrganizer default packageNamed: pn) definedClasses do: [
					:cls |
					{
						cls.
						cls class } do: [ :c |
							c methodsDo: [ :m |
									m messages do: [ :sel |
											(SystemNavigation default allImplementorsOf: sel) isEmpty
												ifTrue: [
												offenders add: c name , '>>' , m selector , ' -> ' , sel ] ] ] ] ] ].
	self
		assert: offenders isEmpty
		description: offenders asSortedCollection asArray printString