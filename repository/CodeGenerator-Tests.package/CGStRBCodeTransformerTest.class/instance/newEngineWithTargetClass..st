helpers
newEngineWithTargetClass: aName
	"Answer a CGSmalltalk engine (prefix 'CGTst', category 'CGGeneratedCode-Core') whose
	 target class is set to the prefixed form of aName (a <String>), creating it. Answer the
	 engine; its codeTransformer targets that class."

	^ CGSmalltalk new
		targetClassPrefix: 'CGTst';
		targetClassCategory: 'CGGeneratedCode-Core';
		targetClass: aName;
		yourself