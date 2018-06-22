magritte descriptions
descriptionIVarMultiOption
	<magitteDescription>
	| tmp2 |
	tmp2 := MAMultipleOptionDescription new.
	tmp2
		accessor: #iVarMultiOption;
		label: 'label Multi Option';
		priority: 60;
		options: #().
	^ tmp2 yourself