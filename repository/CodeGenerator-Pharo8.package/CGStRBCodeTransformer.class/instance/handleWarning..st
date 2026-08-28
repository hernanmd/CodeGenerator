error handling
handleWarning: exception
	"Handle exception (an <RBRefactoringWarning> or <Warning>) raised while adding a
	 variable/accessors. A duplicated-slot-name warning is benign and resumed silently so
	 generation is idempotent; any other warning is also resumed so the run continues."

	exception resume: nil