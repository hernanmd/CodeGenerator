code-generation
autogeneratedComment
	" Private - Answer a <String> with a comment informing the autogenerated code "

	^ String
		streamContents: [ :stream | 
			stream
				crtab;
				nextPutAll: '"WARNING: This is code generated automatically.';
				cr;
				nextPutAll: ' On: ';
				nextPutAll: Date today greaseString;
				nextPutAll: ' - ';
				nextPutAll: Time now greaseString;
				nextPut: $";
				cr; crtab ]