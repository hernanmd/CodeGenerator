accessing - utilities
addConfirmation

	self codeStream 
		nextPutAll: 'read -r -p "Are you sure? [y/N] " response
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