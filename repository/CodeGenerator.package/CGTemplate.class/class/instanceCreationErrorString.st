instance creation
instanceCreationErrorString
	" Answer a <String> with descriptive error message "

	^ 'This is a singleton implementation, so you are not allowed to create instances yourself. 
Use #uniqueInstance to access the instance.'