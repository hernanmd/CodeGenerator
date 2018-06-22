examples
exampleBashScript5
	" Example adding several code templates "

	^ CGBash new
		addSheBang;	
		addIterator: 'i' options: '{1..3}';
		generate.

