code-templates
templateForCSVReaderCollectScript
	" Answer a <String> with the basic convenience template "

	^ '''{1}'' asFileReference readStreamDo: [ : stream |
{2} ]' format: { 
	self fullPath . 
	self templateForCSVReaderCollectInBlock }
