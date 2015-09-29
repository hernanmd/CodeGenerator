examples
exampleQCBMagritte1

	CGQCBMagritte uniqueInstance
		setCleanTarget;
		targetClass: #SRSWALAMPFileUpload;
		targetClassCategory: 'SRS-Magritte';
		applicationTitle: 'Axiom Affymetrix File Uploader';
		applicationName: 'AxiomFileUploader';
		setFileAttributes: 'txtFile' label: 'Axiom Analyzer File' priority: 40;		
		generateMethodsUsingSuperclassChain.