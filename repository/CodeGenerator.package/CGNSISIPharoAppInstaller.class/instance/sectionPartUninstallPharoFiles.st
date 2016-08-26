code-templates
sectionPartUninstallPharoFiles

	^ 'SetOutPath $INSTDIR
    DetailPrint "Start uninstalling"
    
    Delete "$INSTDIR\README.txt"
    Delete "$INSTDIR\{{licenseEnFileName}}"
    Delete "$INSTDIR\{{product}}.exe"
    Delete "$INSTDIR\{{product}}-1.0.changes"
    Delete "$INSTDIR\{{product}}-1.0.image"
	 Delete "$INSTDIR\{{sourcesFileName}}"
    Delete "$INSTDIR\{{splashBmpFileName}}"
    Delete "$INSTDIR\SqueakFFIPrims.dll"
    Delete "$INSTDIR\FT2Plugin.dll"
    Delete "$INSTDIR\libfreetype-6.dll"
    Delete "$INSTDIR\libgit2.dll"
    Delete "$INSTDIR\libssh2-1.dll"
	 Delete "$INSTDIR\ssleay32.dll"
	 Delete "$INSTDIR\zlib1.dll"	
    Delete "$INSTDIR\SqueakSSL.dll"
    Delete "$INSTDIR\libcairo-2.dll"
    Delete "$INSTDIR\libeay32.dll"	
    Delete "$INSTDIR\libpixman-1-0.dll"
    Delete "$INSTDIR\libpng-3.dll"
    ;Delete "ProcessWrapperPlugin.dll"
    ;Delete "$INSTDIR\Win32OSProcessPlugin.dll"

    ;RmDir /r "$INSTDIR\InstallationDir1"
    ;RmDir /r "$INSTDIR\InstallationDir2"
'