code-templates
sectionPartUserFiles
  
	^ '	File README.txt 
	File {{splashBmpFileName}}
	;File "ProcessWrapperPlugin.dll"
	;File "{{pharoVMDir}}\Win32OSProcessPlugin.dll"    
	;File /r InstallationDir1
	;File /r InstallationDir2
'