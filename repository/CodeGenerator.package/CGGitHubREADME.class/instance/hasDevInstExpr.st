testing
hasDevInstExpr
	" Answer <true> if the receiver has an installation expression "
	
	^ devInstExpr notNil and: [ devInstExpr notEmpty ]
