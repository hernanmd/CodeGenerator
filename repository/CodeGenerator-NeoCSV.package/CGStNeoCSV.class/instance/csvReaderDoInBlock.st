code-templates
csvReaderDoInBlock
	" Answer a <String> with the basic convenience template "

	^ '	(NeoCSVReader on: readStream) 
			separator: {1};
			{2}
			do: {3}' format: { 
				self fieldSeparator storeString . 
				self codeForSkipHeader .
				self actionBlock }
