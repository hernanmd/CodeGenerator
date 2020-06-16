code-templates
csvReaderInnerDoInMethod
	" Answer a <String> with the basic convenience template "

	^ '	(NeoCSVReader on: ''{1}'' asFileReference readStream) 
			separator: {2};
			skipHeader;
			do: {3}' format: { self fullPath . self fieldSeparator storeString . self actionBlock }
