code-templates
sectionPartWriteRegStr

	^ '
  ;Store installation 
  WriteRegStr HKCU "${REG_KEY}" "" $INSTDIR
  
  WriteRegStr HKCU "${REG_UNINSTALL}" "DisplayName" "${PRODUCT}"
  WriteRegStr HKCU "${REG_UNINSTALL}" "DisplayIcon" "$\"$INSTDIR\${PRODUCT}.exe$\""
  WriteRegStr HKCU "${REG_UNINSTALL}" "Publisher" "${PROVIDER}"
  WriteRegStr HKCU "${REG_UNINSTALL}" "DisplayVersion" "${VERSION}"
  WriteRegDWord HKCU "${REG_UNINSTALL}" "EstimatedSize" {{estimatedSizeInMb}} ;MB
  WriteRegStr HKCU "${REG_UNINSTALL}" "HelpLink" "${URL}"
  WriteRegStr HKCU "${REG_UNINSTALL}" "URLInfoAbout" "${URL}"
  WriteRegStr HKCU "${REG_UNINSTALL}" "InstallLocation" "$\"$INSTDIR$\""
  WriteRegStr HKCU "${REG_UNINSTALL}" "InstallSource" "$\"$EXEDIR$\""
  WriteRegDWord HKCU "${REG_UNINSTALL}" "NoModify" 1
  WriteRegDWord HKCU "${REG_UNINSTALL}" "NoRepair" 1
  WriteRegStr HKCU "${REG_UNINSTALL}" "UninstallString" "$\"$INSTDIR\${UNINSTALLER_NAME}$\""
  WriteRegStr HKCU "${REG_UNINSTALL}" "Comments" "Uninstalls ${PRODUCT}."
'