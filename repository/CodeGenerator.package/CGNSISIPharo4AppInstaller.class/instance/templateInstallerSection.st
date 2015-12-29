code-templates
templateInstallerSection

	^ '###################################
# Installer section
###################################
Section "Pharo VM" Section1
  SetOutPath "$INSTDIR"
  SetOverwrite on
  DetailPrint "Installation Started."

  File README.txt  
  File "pharo-vm\{{product}}.exe"
  File splash.bmp
  File "pharo-vm\SqueakFFIPrims.dll"
  File "pharo-vm\FT2Plugin.dll"
  File "pharo-vm\libfreetype-6.dll"
  File "pharo-vm\libgit2.dll"
  File "pharo-vm\libssh2-1.dll"
  File "pharo-vm\ssleay32.dll"
  File "pharo-vm\zlib1.dll"
  File "ProcessWrapperPlugin.dll"
  File "pharo-vm\SqueakSSL.dll"
  ; File "pharo-vm\Win32OSProcessPlugin.dll"    
  File "pharo-vm\libcairo-2.dll"
  File "pharo-vm\libeay32.dll"
  File "pharo-vm\libpixman-1-0.dll"
  File "pharo-vm\libpng-3.dll"
  
  ;File /r BioSmalltalkTestFiles
  ;File /r phyloclasstalk_files
  
  ;Store installation 
  WriteRegStr HKCU "${REG_KEY}" "" $INSTDIR
  
  WriteRegStr HKCU "${REG_UNINSTALL}" "DisplayName" "${PRODUCT}"
  WriteRegStr HKCU "${REG_UNINSTALL}" "DisplayIcon" "$\"$INSTDIR\${PRODUCT}.exe$\""
  WriteRegStr HKCU "${REG_UNINSTALL}" "Publisher" "${PROVIDER}"
  WriteRegStr HKCU "${REG_UNINSTALL}" "DisplayVersion" "${VERSION}"
  WriteRegDWord HKCU "${REG_UNINSTALL}" "EstimatedSize" 130 ;MB
  WriteRegStr HKCU "${REG_UNINSTALL}" "HelpLink" "${URL}"
  WriteRegStr HKCU "${REG_UNINSTALL}" "URLInfoAbout" "${URL}"
  WriteRegStr HKCU "${REG_UNINSTALL}" "InstallLocation" "$\"$INSTDIR$\""
  WriteRegStr HKCU "${REG_UNINSTALL}" "InstallSource" "$\"$EXEDIR$\""
  WriteRegDWord HKCU "${REG_UNINSTALL}" "NoModify" 1
  WriteRegDWord HKCU "${REG_UNINSTALL}" "NoRepair" 1
  WriteRegStr HKCU "${REG_UNINSTALL}" "UninstallString" "$\"$INSTDIR\${UNINSTALLER_NAME}$\""
  WriteRegStr HKCU "${REG_UNINSTALL}" "Comments" "Uninstalls ${PRODUCT}."  
  
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
  
SectionEnd

Section "Image and Sources" Section2
  SetOutPath "$INSTDIR"

  File {{product}}-${VERSION}.changes
  File {{product}}-${VERSION}.image
  File "pharo-vm\{{sourcesFileName}}"  
  
SectionEnd
'