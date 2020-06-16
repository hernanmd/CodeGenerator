code-templates
csvReaderUpToEndInBlock
	" Answer a <String> with the basic convenience template "

	^ '	(NeoCSVReader on: readStream) 
			separator: {1};
			upToEnd.' format: { self fieldSeparator storeString }
