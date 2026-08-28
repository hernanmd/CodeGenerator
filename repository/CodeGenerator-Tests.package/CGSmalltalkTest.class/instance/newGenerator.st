helpers
newGenerator
	"Answer a fresh CGSmalltalk configured with the test prefix 'CGTst' and a test
	 package category, so generated classes are isolated and cleaned up."

	^ CGSmalltalk new
		targetClassPrefix: 'CGTst';
		targetClassCategory: 'CGTst-Generated';
		yourself