code-templates
templateForCSVWriterDoInBlock
	" Answer a <String> with the basic convenience template "

	^ '	(NeoCSVWriter on: stream) 
			fieldWriter: #raw;
			separator: {2};
			writeHeader: {3};
			nextPutAll: data;
			flush' format: { self targetSelector asString . self fieldSeparator storeString . self headers }
