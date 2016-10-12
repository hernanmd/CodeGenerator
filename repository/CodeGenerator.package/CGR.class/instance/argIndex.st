accessing - parameters
argIndex
	" Start argument count from 1 "

	^ argIndex
		ifNil: [ argIndex := 1 ]