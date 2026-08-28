tests
testDefaultTargetTestCategoryHasNoObsoleteSend
	"Req 7: defaultTargetTestCategory derives 'Package-Tests' from the input class without
	 sending the removed systemCategoryPrefix; falls back to 'Generated-Tests' with no input."

	self
		assert: CGSunit new defaultTargetTestCategory
		equals: 'Generated-Tests'.
	self
		assert: (CGSunit new inputClass: Point) defaultTargetTestCategory
		equals: 'Kernel-Tests'