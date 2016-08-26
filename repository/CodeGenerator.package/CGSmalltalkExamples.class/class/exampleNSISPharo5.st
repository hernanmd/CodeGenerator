examples
exampleNSISPharo5

	CGNSISIPharo5AppInstaller uniqueInstance
		product: 'MyProduct';
		identity: 'MyName';
		version: '1.0.0';
		url: 'http://www.google.com';
		launcher: 'MyLauncher.exe';
		licenseEnFileName: 'LICENSE_ENGLISH';
		iconFile: 'MyProduct.ico';
		welcomeBmpFile: 'MyProduct.bmp';
		splashBMPFileName: 'Splash.bmp';
		generate.
	self inform: 'Done'.		