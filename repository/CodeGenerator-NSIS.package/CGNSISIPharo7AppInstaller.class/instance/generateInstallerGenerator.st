code-generation
generateInstallerGenerator
	" Generate NSIS Installer String "

	self dumpToBATFile: (self installerGeneratorScript: self product).