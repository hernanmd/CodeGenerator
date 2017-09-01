code-templates
templateForTitle

	^ 'title
	" Private - See superimplementor''s comment "

	^ {1}' format: { self title surroundedBySingleQuotes }