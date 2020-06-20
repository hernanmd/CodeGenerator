accessing
templateContentsAt: aFilename
	" Answer the <String> from aFilename contents, using the receiver's location "

	^ (self location / aFilename) contents