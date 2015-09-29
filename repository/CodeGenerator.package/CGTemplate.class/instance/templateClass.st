accessing
templateClass

	^ templateClass
		ifNil: [ templateClass := self defaultTemplateClass ]