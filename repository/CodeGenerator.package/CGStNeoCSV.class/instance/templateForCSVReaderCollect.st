code-templates
templateForCSVReaderCollect
	" Answer a <String> with the basic convenience template "

	^ '{1}
	
	(NeoCSVReader on: stream) 
			separator: {2};
			skipHeader;
			rowsCollect: {3}' format: { self targetSelector asString . self fieldSeparator . self block }
