code-generation
templateSource: aSelector
	"  Evaluate aSelector in the receiver and answer a <String> code template "

	^ [ self perform: aSelector ]
	on: MessageNotUnderstood 
	do: [ : ex | self class perform: aSelector ]