examples
exampleBashScript3
	" Example configuring settings before generation "
	
	^ CGBash new
		filenameId: 'input_file.csv';
		fieldSeparator: ',';
		addColumnCounter;
		generate.

