generation
generateMethod: aSelector body: aBodyString
	"Compose and compile a full method into the current target class: aSelector (a <String>,
	 the method pattern/header) followed by aBodyString (a <String>, the body). Uses the
	 fail-fast build lifecycle and records the selector for clean-by-identity. Answer the
	 compiled selector."

	self startMethod.
	self
		body: aSelector;
		body: String cr;
		body: String tab;
		body: aBodyString.
	^ self finishMethod