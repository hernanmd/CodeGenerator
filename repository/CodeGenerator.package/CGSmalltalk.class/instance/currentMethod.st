accessing
currentMethod
	" Answer the current <CompiledMethod> as specified by target class and target selector "
	
	^ self targetClass methodDictionary 
		at: self targetSelector
		ifAbsent: [ self error: self targetSelector asString , ' method not found in ' , self targetClass asString ]