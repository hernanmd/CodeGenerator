code-templates
csvWriterInnerDo
	" Answer a <String> with the basic convenience template "

	^ '{1}
	
	(NeoCSVWriter on: stream) 
			fieldWriter: #raw;
			separator: Character tab;
			writeHeader: {2};
			nextPutAll: {3};
			flush' format: { self targetSelector asString . self returnOperatorOrEmpty }
