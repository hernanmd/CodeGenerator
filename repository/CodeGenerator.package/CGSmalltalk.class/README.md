A Smalltalk code generator writes Smalltalk code to the receiver's virtual image.

The generator can be configured with a target class. The target class is set to the last created class after its creation, and used to remember where new behaviors go. And the same remains for class categories, superclass, and test classes.

If no class category is selected, then a new class is compiled in an empty category in an "empty" package, meaning you must assign it manually later.

Instance Variables
	cleanTarget:				<Object>
	codeStream:				<Object>
	sourceCode:				<Object>
	sourceString:			<Object>
	targetClass:				<Object>
	targetClassCategory:		<Object>
	targetMethodCategory:	<Object>
	targetSelector:			<Object>
	targetSuperclass:			<Object>
	targetTestCategory:		<Object>
	targetTestClass:			<Object>
	targetTestSuperclass:		<Object>
	userComment:			<Object>

cleanTarget
	- xxxxx

codeStream
	- xxxxx

sourceCode
	- xxxxx

sourceString
	- xxxxx

targetClass
	- xxxxx

targetClassCategory
	- xxxxx

targetMethodCategory
	- xxxxx

targetSelector
	- xxxxx

targetSuperclass
	- xxxxx

targetTestCategory
	- xxxxx

targetTestClass
	- xxxxx

targetTestSuperclass
	- xxxxx

userComment
	- xxxxx
