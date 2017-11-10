code-templates
templateForCSVReaderSelectInBlock
	" Answer a <String> with the basic convenience template "

	^ '	(NeoCSVReader on: stream) 
			separator: {1}; {2}
			select: {3}' format: { 
				self fieldSeparator storeString . 
				self codeForSkipHeader .
				self block }
