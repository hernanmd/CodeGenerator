examples
exampleQCBMagritte1
	" File uploader example "

	CGQCBMagritte new
		setCleanTarget;
		targetClass: #ExampleFileUploadQCBootstrapMagritte;
		targetClassCategory: 'ExampleQCBootstrapMagritte';
		applicationTitle: 'Code Generator Example QC Bootstrap Magritte';
		applicationName: 'ExampleQCBootstrapMagritte';
		setFileAttributes: 'txtFile' label: 'Upload File' priority: 40;
		generateMethodsUsingSuperclassChain.

	Smalltalk tools browser openOnClass: #ExampleFileUploadQCBootstrapMagritte asClass.