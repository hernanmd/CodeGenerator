accessing
fields
	"Answer the fields <Dictionary> mapping field name to type string."

	^ fields ifNil: [ fields := Dictionary new ]