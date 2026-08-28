sessions
newSession
	"Answer a fresh, isolated CGGenerationSession configured from the receiver, wired with a
	 name policy (carrying my prefix), a target-class resolver, and the default RB transformer
	 port. Each call yields a new session so runs do not share per-run state."

	^ CGGenerationSession new
		  context: self;
		  namePolicy: (CGNamePolicy new
				   prefix: self prefix;
				   yourself);
		  resolver: CGTargetClassResolver new;
		  yourself