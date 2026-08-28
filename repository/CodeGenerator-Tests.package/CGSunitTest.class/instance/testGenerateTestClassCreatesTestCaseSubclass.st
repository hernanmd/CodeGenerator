tests
testGenerateTestClassCreatesTestCaseSubclass
	"CGSunit>>generateTestClass: installs a TestCase subclass via the Fluid installer
	 (regression for the removed subclass:... form and the bug that passed a class object)."

	| gen cls |
	gen := CGSunit new
		       targetTestCategory: 'CGGeneratedCode-Core';
		       yourself.
	cls := gen generateTestClass: 'CGTstSampleTest'.
	self assert: (Smalltalk hasClassNamed: 'CGTstSampleTest').
	self assert: (cls inheritsFrom: TestCase).
	self assert: cls name equals: #CGTstSampleTest