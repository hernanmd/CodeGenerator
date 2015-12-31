code-templates
sectionPartUninstallerEpilogue

	^ '
;delete uninstaller
    Delete "$INSTDIR\Uninstall.exe"
    RmDir /r /REBOOTOK "$SMPROGRAMS\${MGROUP}"
    RmDir /REBOOTOK $INSTDIR
    DeleteRegKey /ifempty HKCU "${REG_KEY}"
SectionEnd
'