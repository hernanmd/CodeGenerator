testing
hasStInstExpr
	" Answer <true> if the receiver has an installation expression "
	
	^ stInstExpr notNil and: [ stInstExpr notEmpty ]
