converting
asShieldCatName: aString 
	" Answer a <String> valid to be used in an URL query to the receiver's endpoint "
	
	^ aString copyReplaceAll: ' ' with: '-'