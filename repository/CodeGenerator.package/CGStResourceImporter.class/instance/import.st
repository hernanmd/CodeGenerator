accessing
import
	" Answer the receiver. Import files in receiver's fullPath "
	
	(self canConfigPath: self fullPath)
		ifFalse: [ ^ self confirmRemoveGeneratedCode ].
	self generateMethods.
	self importResources.
	self inform: 'Done importing '.
