*CodeGenerator-Pharo
fileInDisplayingProgress

	self readStream 
		do: [ :stream | CodeImporter evaluateFileStream: stream ]
		displayingProgress: 'Importing code...'