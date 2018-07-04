code-templates
templateLicense

	^ String streamContents: [ : stream |
		stream
			nextPutAll: '# Installation';
			nextPutTerminator;
			nextPutTerminator.
		self addInstallSections: stream ]