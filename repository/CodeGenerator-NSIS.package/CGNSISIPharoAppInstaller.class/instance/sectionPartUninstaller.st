code-templates
sectionPartUninstaller

	^ '
;Create uninstaller
  WriteUninstaller "$INSTDIR\${UNINSTALLER_NAME}.exe"
  
  SetOutPath $INSTDIR
  DetailPrint "Create Program group"
;  CreateDirectory "$SMPROGRAMS\${MGROUP}"
;  CreateShortCut "$SMPROGRAMS\${MGROUP}\${PRODUCT}.lnk" "$INSTDIR\${LAUNCHER}"
;  CreateShortCut "$SMPROGRAMS\${MGROUP}\Uninstall.lnk" "$INSTDIR\Uninstall.exe"
 
  SetShellVarContext current
  CreateDirectory "${START_LINK_DIR}"
  CreateShortCut "${START_LINK_RUN}" "$INSTDIR\${PRODUCT}.exe"
  CreateShortCut "${START_LINK_UNINSTALLER}" "$INSTDIR\${UNINSTALLER_NAME}.exe"
'