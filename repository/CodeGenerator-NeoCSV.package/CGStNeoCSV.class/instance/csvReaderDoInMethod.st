code-templates
csvReaderDoInMethod
	" Answer a <String> with the basic convenience template "

	^ '{1}
	
{2}' format: { self targetSelector asString . self csvReaderInnerDoInMethod }
