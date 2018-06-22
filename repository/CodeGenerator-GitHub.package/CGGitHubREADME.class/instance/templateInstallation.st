code-templates
templateInstallation

	^ String streamContents: [ : stream |
		stream
			nextPutAll: '# Installation';
			nextPutTerminator;
			nextPutTerminator.
		self addInstallSections: stream ]