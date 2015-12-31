code-templates
sectionPartUserFiles
  
	^ '	File README.txt 
	File {{splashBmpFileName}}
	;File "ProcessWrapperPlugin.dll"
	;File "{{pharoVMDir}}\Win32OSProcessPlugin.dll"    
	;File /r BioSmalltalkTestFiles
	;File /r phyloclasstalk_files
'