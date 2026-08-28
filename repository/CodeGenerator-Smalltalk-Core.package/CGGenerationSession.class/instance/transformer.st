accessing
transformer
	"Answer the transformer port (mutation strategy). Defaults to the RB code transformer,
	 owned by this session so its logging delegates back here."

	^ transformer ifNil: [
			  transformer := CGStRBCodeTransformer new
				                 owner: self;
				                 yourself ]