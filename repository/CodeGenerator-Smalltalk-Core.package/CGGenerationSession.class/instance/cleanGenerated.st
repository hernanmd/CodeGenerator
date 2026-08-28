cleaning
cleanGenerated
	"Clean by generation identity: remove exactly the selectors this session recorded as
	 generated from the current target class, then forget them. No-op when nothing was
	 generated or no target class is set. Never removes selectors this session did not
	 generate (Req 8)."

	currentClass ifNil: [ ^ self ].
	generatedSelectors isEmpty ifTrue: [ ^ self ].
	generatedSelectors do: [ :sel |
			(currentClass includesSelector: sel) ifTrue: [
				currentClass removeSelector: sel ] ].
	generatedSelectors := OrderedCollection new