cleaning
cleanMethodCategory
	"Remove the methods classified under the target method category (protocol) from the
	 target class. Removes the protocol via the current API; if that fails (e.g. the
	 protocol is not empty), removes each selector first, then the protocol."

	| cls |
	shouldCleanTarget ifFalse: [ ^ self ].
	cls := self classFor: targetClass.
	cls ifNil: [ ^ self ].
	self cleanAllMethodsInCategory: self targetMethodCategory.
	cls removeProtocolIfEmpty: self targetMethodCategory