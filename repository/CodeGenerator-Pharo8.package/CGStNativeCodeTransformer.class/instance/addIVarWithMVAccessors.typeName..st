code-generation
addIVarWithMVAccessors: iVarName typeName: typeName 

	| prefix |
	prefix := typeName first isVowel
		ifTrue: [ 'an' ]
		ifFalse: [ 'a' ].
	self targetClass compile: ('add{1}: {2}
	self {3} add: {2}' format: (
		Array 
			with: iVarName capitalized 
			with: prefix , typeName 
			with: iVarName))
		classified: 'adding/removing'.

	self targetClass compile: ('remove{1}: {2}
	{3} remove: {2}' format: (
		Array 
			with: iVarName capitalized 
			with: prefix , typeName 
			with: iVarName))
		classified: 'adding/removing'