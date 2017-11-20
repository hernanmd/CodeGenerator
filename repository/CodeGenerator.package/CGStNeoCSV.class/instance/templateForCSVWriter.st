code-templates
templateForCSVWriter
	" Answer a <String> with the basic convenience template "

	^ '| data |
data := Set new.
''{1}'' asFileReference writeStreamDo: [ : writeStream |
{2} ]' format: { self fullPath . self templateForCSVWriterDoInBlock }