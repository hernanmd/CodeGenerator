accessing
languageTag

	^ languageTag
		ifNil: [ languageTag := self defaultLanguageTag ]