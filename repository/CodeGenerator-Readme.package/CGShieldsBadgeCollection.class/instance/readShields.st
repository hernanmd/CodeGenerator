initialization
readShields
	" Answer the contents of the receiver's badges file "

	^ FLMaterializer materializeFromFileNamed: self shieldsFilename 