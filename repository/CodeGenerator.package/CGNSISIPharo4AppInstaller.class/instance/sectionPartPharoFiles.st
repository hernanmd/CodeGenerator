code-templates
sectionPartPharoFiles
  
	^ 'File README.txt  
  File "{{pharoVMDir}}\{{product}}.exe"
  File {{splashBmpFileName}}
  File "{{pharoVMDir}}\SqueakFFIPrims.dll"
  File "{{pharoVMDir}}\FT2Plugin.dll"
  File "{{pharoVMDir}}\libfreetype-6.dll"
  File "{{pharoVMDir}}\libgit2.dll"
  File "{{pharoVMDir}}\libssh2-1.dll"
  File "{{pharoVMDir}}\ssleay32.dll"
  File "{{pharoVMDir}}\zlib1.dll"
  File "{{pharoVMDir}}\SqueakSSL.dll"
  File "{{pharoVMDir}}\libcairo-2.dll"
  File "{{pharoVMDir}}\libeay32.dll"
  File "{{pharoVMDir}}\libpixman-1-0.dll"
  File "{{pharoVMDir}}\libpng-3.dll"
  ; File "ProcessWrapperPlugin.dll"
  ; File "{{pharoVMDir}}\Win32OSProcessPlugin.dll"    
  
  ;File /r BioSmalltalkTestFiles
  ;File /r phyloclasstalk_files
'