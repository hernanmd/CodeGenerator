examples
exampleMagritteDescriptionCreation2

	CGStMagritte new
		inputClass: ModelClass1;
		targetClass: ModelClass1;
		setBooleanAttributes: 		'instVar1' 		default: true					label: 'label iVar1' 				priority: 10;
		setDateAndTimeAttributes: 	'instVar2' 		default: DateAndTime today 	label: 'label Date and Time' 	priority: 20;
		setDateAttributes: 			'instVar3' 		default: Date today 			label: 'label Date' 				priority: 30;
		setFileAttributes: 			'iVarFile' 											label: 'label File' 				priority: 40;
		setMemoAttributes: 			'iVarMemo' 		default: 'Memo'					label: 'label Memo' 				priority: 50;
		setMultiOptionAttributes: 	'iVarMulti' 		default: #(One Two)			label: 'label Multi Option' 	priority: 60;
		setNumberAttributes: 			'iVarInteger' 	default: 10 						label: 'label Integer' 			priority: 70.
	Smalltalk tools browser openOnClass: ModelClass1.															
	self inform: 'Done'.