accessing
targetProjectSuperclass
	^ targetProjectSuperclass
		ifNil: [ targetProjectSuperclass := #PFProjectBase ]