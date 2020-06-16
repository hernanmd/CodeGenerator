code-templates
csvReaderCollectTemplate
	" Answer a <String> with the basic convenience template "

	^ '''{1}'' asFileReference readStreamDo: [ : readStream |
{2} ]' format: { 
	self fullPath . 
	self csvReaderCollectInBlock }
