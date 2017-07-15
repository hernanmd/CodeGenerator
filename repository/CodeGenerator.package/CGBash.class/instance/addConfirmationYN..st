accessing - utilities
addConfirmationYN: aString

	self codeStream 
		nextPutAll: 'read -r -p';
		nextPutAll: (aString surroundedBy: '"');
		nextPutAll: 'response
if [[ $response =~ ^([yY][eE][sS]|[yY])$ ]]
then
    ';
		nextPutAll: self doSomething;
		nextPutAll: '
else
    ';
		nextPutAll: self doSomethingElse;
		nextPutAll: '
fi'