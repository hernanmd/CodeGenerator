code-templates
sectionPartUserFiles
  
	^ '	File README.txt 
	File "${RESDIR}\{{splashBMPFileName}}"
	File "{{pharoVMDir}}\ProcessWrapperPlugin.dll"
	;File "{{pharoVMDir}}\Win32OSProcessPlugin.dll"    
	;File /r InstallationDir1
	;File /r InstallationDir2
'