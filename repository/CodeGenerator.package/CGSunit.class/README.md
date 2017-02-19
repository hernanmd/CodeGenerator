SUnit Tests Generator.

- Supports specification of input class.
- Supports specification of custom test case superclass.
- Automatically prefix generated tests selectors with #test
- Automatically excludes methods: #initialize, #printOn: #storeOn:, etc. or custom methods.
- Adds dummy sample assertion for each method.

Example:

CGSunit uniqueInstance
	setCleanTarget;
	inputClass: CGSmalltalk;
	targetTestClass: #TestCGSmalltalk;
	generateSetUp: true;
	generateTests.
