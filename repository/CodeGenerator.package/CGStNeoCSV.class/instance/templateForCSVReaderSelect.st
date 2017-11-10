code-templates
templateForCSVReaderSelect
	" Answer a <String> with the basic convenience template "

	^ '{1}
	
	(NeoCSVReader on: stream) 
			separator: {2}; {3}
			select: {4}' format: { 
				self targetSelector asString . 
				self codeForSkipHeader .
				self fieldSeparator storeString . 
				self block }
