code-templates
templateUtilities

	^ '#################################
# Utilities
#################################

# Installer functions
Function .onInit
	; Check to see if already installed
	ReadRegStr $R0 HKCU "Software\Microsoft\Windows\CurrentVersion\Uninstall\${PRODUCT}" "UninstallString"
	; MessageBox MB_OK "{{product}} is installed at $R0"	
	StrCmp $R0 "" done
	MessageBox MB_OKCANCEL|MB_ICONEXCLAMATION "${PRODUCT} is already installed. $\n$\nClick `OK` to remove the \
	previous version or `Cancel` to cancel this upgrade." IDOK uninst
	Abort

uninst:	
	ClearErrors
   ; Pop $R1
	; StrCmp $R1 2 Quit +1
	ExecWait ''$R0 _?=$INSTDIR'' ;Do not copy the uninstaller to a temp file	
	;Exec $R0

done:
    InitPluginsDir
    Push $R1
    File /oname=$PLUGINSDIR\spltmp.jpg splash.bmp
    advsplash::show 3000 600 400 -1 $PLUGINSDIR\spltmp
    Pop $R1
    Pop $R1
	
	System::Call ''kernel32::CreateMutexA(i 0, i 0, t "{{product}}Mutex") i .r1 ?e''
	Pop $R0
 
	StrCmp $R0 0 +3
	MessageBox MB_OK|MB_ICONEXCLAMATION "The installer is already running."
	Abort
	
FunctionEnd
'
