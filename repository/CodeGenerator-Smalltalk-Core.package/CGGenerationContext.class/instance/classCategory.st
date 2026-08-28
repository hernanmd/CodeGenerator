accessing
classCategory
	"Answer the package/category <String> where generated classes are installed."

	^ classCategory ifNil: [ 'CGGeneratedCode-Core' ]