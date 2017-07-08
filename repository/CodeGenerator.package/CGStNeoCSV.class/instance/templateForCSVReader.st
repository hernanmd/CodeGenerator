code-templates
templateForCSVReader
	" Answer a <String> with the basic convenience template "

	^ '''{1}'' asFileReference readStreamDo: [ : stream |
{2} ]' format: { self fullPath . self templateForCSVReaderDoInBlock }
