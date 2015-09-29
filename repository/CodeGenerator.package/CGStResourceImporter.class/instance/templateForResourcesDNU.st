code-templates
templateForResourcesDNU

	^ 'doesNotUnderstand: aMessage

	^ self resources at: aMessage selector'