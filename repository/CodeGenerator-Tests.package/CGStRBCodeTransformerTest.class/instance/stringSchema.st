helpers
stringSchema
	"Answer a schema <Dictionary> describing a string property."

	^ Dictionary new
		at: 'type' put: 'string';
		yourself