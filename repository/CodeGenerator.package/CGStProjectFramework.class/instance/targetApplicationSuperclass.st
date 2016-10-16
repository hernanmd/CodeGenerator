accessing
targetApplicationSuperclass

	^ targetApplicationSuperclass
		ifNil: [ targetApplicationSuperclass := #PFProjectApplication ]