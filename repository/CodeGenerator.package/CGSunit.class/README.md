SUnit Tests Generator.

- Supports specifying the input class.
- Prefix generated tests selectors with #test
- Supports exclusion of methods: #initialize, #printOn: #storeOn:, etc.
- Adds dummy sample assertion for each method.
- Supports specifying different test case superclass.

Example:

CGSunit uniqueInstance
	setCleanTarget;
	inputClass: CGSmalltalk;
	targetTestClass: #TestCGSmalltalk;
	generateSetUp: true;
	generateTests.
