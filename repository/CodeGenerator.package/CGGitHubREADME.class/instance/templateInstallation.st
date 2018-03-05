code-templates
templateInstallation

	^ String streamContents: [ : stream |
		stream
			nextPutAll: '# Installation';
			nextPutTerminator;
			nextPutTerminator.
		self hasStInstExpr 
			ifTrue: [ stream nextPutAll: self stInstExpr ].
		self hasDevInstExpr 
			ifTrue: [ stream nextPutAll: self devInstExpr ] ]