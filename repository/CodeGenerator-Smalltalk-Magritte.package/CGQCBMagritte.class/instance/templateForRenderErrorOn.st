code-templates
templateForRenderErrorOn

	^ 'renderErrorOn: aRenderer
	| now |
	now := DateAndTime now.
	aRenderer
		heading: ''Current time'';
		text: now;
		yourself'