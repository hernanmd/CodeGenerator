examples
exampleMagritteDescriptionCreation1

	CGStMagritte new
		inputClass: ModelClass1;
		targetClass: ModelClass1;
		setBooleanAttributes: 		'instVar1' 			label: 'label iVar1' 				priority: 10;
		setDateAndTimeAttributes: 	'instVar2' 			label: 'label Date and Time' 	priority: 20;
		setDateAttributes: 			'instVar3' 			label: 'label Date' 				priority: 30;
		setFileAttributes: 			'iVarFile' 			label: 'label File' 				priority: 40;
		setMemoAttributes: 			'iVarMemo' 			label: 'label Memo' 				priority: 50;
		setMultiOptionAttributes: 	'iVarMultiOption' 	label: 'label Multi Option' 	priority: 60;
		setNumberAttributes: 			'iVarInteger' 		label: 'label Integer' 			priority: 70.
	self openOnClass: #ModelClass1.

										