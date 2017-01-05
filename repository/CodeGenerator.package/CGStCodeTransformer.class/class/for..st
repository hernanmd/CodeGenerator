instance creation
for: aClass
	" Answer the receiver configured using aClass as generator "

	^ self new 
		owner: aClass;
		yourself