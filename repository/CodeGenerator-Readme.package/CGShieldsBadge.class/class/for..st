instance creation
for: serviceSelector
	" Answer a new instance of the receiver configured for serviceSelector service "

	^ self new
		service: serviceSelector uncapitalized;
		yourself.