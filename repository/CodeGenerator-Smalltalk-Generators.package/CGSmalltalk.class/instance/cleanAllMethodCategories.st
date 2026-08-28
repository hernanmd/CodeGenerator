cleaning
cleanAllMethodCategories
	"Remove every non-unclassified protocol (and its methods) from the target class, using
	 the current class protocol API."

	| cls |
	shouldCleanAllTargetMethods ifFalse: [ ^ self ].
	cls := self classFor: targetClass.
	cls ifNil: [ ^ self ].
	(self methodCategoriesForClass: cls) do: [ :cat |
			self cleanAllMethodsInCategory: cat.
			cls removeProtocolIfEmpty: cat ]