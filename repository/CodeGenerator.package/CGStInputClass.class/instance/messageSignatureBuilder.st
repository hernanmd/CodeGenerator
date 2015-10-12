accessing
messageSignatureBuilder
	^ messageSignatureBuilder
		ifNil: [ messageSignatureBuilder := CGStMessageSignatureBuilder new ]