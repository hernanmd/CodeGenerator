examples
example1

	CGStPFTranslator new
		targetClass: CGStPFTranslatedTarget;
		inputClass: CGStPFTranslationClass;
		targetSelector: #addTranslationsForESPart1;
		codeTransformer: CGStNativeCodeTransformer;
		generate.