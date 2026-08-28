tests - naming
testValidateClassNameCapitalizes
	"validateClassName: capitalizes an uncapitalized name."

	self assert: (self newGenerator validateClassName: 'widget') equals: 'Widget'