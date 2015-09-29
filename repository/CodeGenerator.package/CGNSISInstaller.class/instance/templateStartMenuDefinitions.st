code-templates
templateStartMenuDefinitions

	^ '###################################
# Start Menu section
###################################
!define START_LINK_DIR "$STARTMENU\Programs\${PRODUCT}"
!define START_LINK_RUN "$STARTMENU\Programs\${PRODUCT}\${PRODUCT}.lnk"
!define START_LINK_UNINSTALLER "$STARTMENU\Programs\${PRODUCT}\Uninstall ${PRODUCT}.lnk"

# Start Menu
# createDirectory "$SMPROGRAMS\${COMPANYNAME}"
# createShortCut "$SMPROGRAMS\${COMPANYNAME}\${APPNAME}.lnk" "$INSTDIR\app.exe" "" "$INSTDIR\logo.ico"
'