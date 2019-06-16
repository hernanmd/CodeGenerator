accessing
defaultTemplates

	^ DefaultTemplates
		ifNil: [ DefaultTemplates := OrderedCollection new: 20 ]