initialize-release
initialize
	" Private - See superimplementor's comment "
	
	super initialize.
	self targetSuperclass: #PFProjectBase.
	self targetApplicationSuperclass: #PFProjectApplication.
