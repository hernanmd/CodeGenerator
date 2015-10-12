accessing
messageSignatureBuilder
	^ messageSignatureBuilder
		ifNil: [ messageSignatureBuilder := CGSmalltalkMessageSignatureBuilder new ]