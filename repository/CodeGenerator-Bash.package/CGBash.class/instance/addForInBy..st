accessing - utilities
addForInBy: anInterval

	| bashInterval |
	bashInterval := '{' , anInterval first , '..' , anInterval last , '..' , anInterval increment , '}'.
	self codeStream 
		nextPutAll: 'for i in ';
		nextPutAll: bashInterval;
		nextPutAll: '
  do
     ';
		nextPutAll: self doSomething;
		nextPutAll: '
 done'