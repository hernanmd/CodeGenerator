code-templates
templateInstallation

	^ String streamContents: [ : stream |
		stream
			nextPutAll: '# Installation'.
		self hasStInstExpr notEmpty 
			ifTrue: [ stream nextPutAll: self stInstExpr ].
		self hasDevInstExpr notEmpty 
			ifTrue: [ stream nextPutAll: self devInstExpr ] ]