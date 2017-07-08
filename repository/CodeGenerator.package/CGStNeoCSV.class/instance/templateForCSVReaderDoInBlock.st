code-templates
templateForCSVReaderDoInBlock
	" Answer a <String> with the basic convenience template "

	^ '	(NeoCSVReader on: stream) 
			separator: {1};
			skipHeader;
			do: {2}' format: { self fieldSeparator . self block }
