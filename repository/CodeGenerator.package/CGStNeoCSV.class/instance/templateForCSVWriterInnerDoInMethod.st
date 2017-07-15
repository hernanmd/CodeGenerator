code-templates
templateForCSVWriterInnerDoInMethod
	" Answer a <String> with the basic convenience template "

	^ '	(NeoCSVWriter on: ''{1}'') 
			separator: {2};
			nextPutAll: {3}' format: { self fullPath . self fieldSeparator storeString . self data storeString }
