@echo off
color 0A
title Combined Tools Menu

:MainMenu
cls
echo.
echo Combined Tools Menu
echo ---------------------
echo 1. System Information Tools
echo 2. System Maintenance Tools
echo 3. Diagnostic Tools
echo 4. Networking Tools
echo 5. Security Tools
echo 6. Troubleshooting Tools
echo 7. Performance Tools
echo 8. Software Tools
echo 9. Windows Access Tools
echo 10. WiFi Network Manager
echo 11. App Management Tools
echo 12. Privacy Settings
echo 13. Modern Windows Features
echo 14. Disk Health Monitor
echo 15. Security Center
  25 |  echo 16. Advanced Diagnostics
  26 |  echo 17. Sponsorship
  27 |  echo 18. Exit
echo 16. Advanced Diagnostics
echo 17. Exit
echo.
  28 |  echo.
  29 |  set /p "choice=Enter your choice (1-18): "
set /p "choice=Enter your choice (1-17): "

if "%choice%"=="1" goto SystemInfoMenu
if "%choice%"=="2" goto SystemMaintenanceMenu
if "%choice%"=="3" goto DiagnosticMenu
if "%choice%"=="4" goto NetworkingMenu
if "%choice%"=="5" goto SecurityMenu
if "%choice%"=="6" goto TroubleshootingMenu
if "%choice%"=="7" goto PerformanceMenu
if "%choice%"=="8" goto SoftwareMenu
if "%choice%"=="9" goto WindowsAccessMenu
if "%choice%"=="10" goto WiFiMenu
if "%choice%"=="11" goto AppManagementMenu
if "%choice%"=="12" goto PrivacyMenu
if "%choice%"=="13" goto ModernWindowsMenu
if "%choice%"=="14" goto DiskHealthMenu
if "%choice%"=="15" goto SecurityCenterMenu
  45 |  if "%choice%"=="16" goto AdvancedDiagnosticsMenu
  46 |  if "%choice%"=="17" goto SponsorshipMenu
  47 |  if "%choice%"=="18" goto Exit
if "%choice%"=="16" goto AdvancedDiagnosticsMenu
if "%choice%"=="17" goto Exit

echo Invalid choice. Please try again.
goto MainMenu

:SystemInfoMenu
cls
echo.
echo System Information Tools
echo --------------------------
echo 1. Check System Information
echo 2. Check System Uptime
echo 3. Check Last Boot Time
echo 4. Check System Model
echo 5. Check System Manufacturer
echo 6. Check OS Version
echo 7. Check OS Build Number
echo 8. Check System Language
echo 9. Check System Serial Number
echo 10. Check BIOS Version
echo 11. Check BIOS Manufacturer
echo 12. Check CPU Name
echo 13. Check CPU Speed
echo 14. Check CPU Cores
echo 15. Check CPU Threads
echo 16. Check Total Physical Memory
echo 17. Check Available Physical Memory
echo 18. Check Disk Drives
echo 19. Check Disk Partitions
echo 20. Check Logical Disks
echo 21. Check Network Adapters
echo 22. Check IP Addresses
echo 23. Check MAC Addresses
echo 24. Check Default Gateway
echo 25. Check DNS Servers
echo 26. Check DHCP Server
echo 27. Check Winsock Configuration
echo 28. Check Proxy Settings
echo 29. Check Environment Variables
echo 30. Check System Date and Time
echo 31. Back to Main Menu
echo.
set /p "choice=Enter your choice (1-31): "

if "%choice%"=="1" goto Tool018
if "%choice%"=="2" goto Tool144
if "%choice%"=="3" goto Tool145
if "%choice%"=="4" goto Tool146
if "%choice%"=="5" goto Tool147
if "%choice%"=="6" goto Tool148
if "%choice%"=="7" goto Tool149
if "%choice%"=="8" goto Tool150
if "%choice%"=="9" goto Tool151
if "%choice%"=="10" goto Tool152
if "%choice%"=="11" goto Tool153
if "%choice%"=="12" goto Tool154
if "%choice%"=="13" goto Tool155
if "%choice%"=="14" goto Tool156
if "%choice%"=="15" goto Tool157
if "%choice%"=="16" goto Tool158
if "%choice%"=="17" goto Tool159
if "%choice%"=="18" goto Tool160
if "%choice%"=="19" goto Tool161
if "%choice%"=="20" goto Tool162
if "%choice%"=="21" goto Tool163
if "%choice%"=="22" goto Tool164
if "%choice%"=="23" goto Tool165
if "%choice%"=="24" goto Tool166
if "%choice%"=="25" goto Tool167
if "%choice%"=="26" goto Tool168
if "%choice%"=="27" goto Tool169
if "%choice%"=="28" goto Tool170
if "%choice%"=="29" goto Tool185
if "%choice%"=="30" goto Tool186
if "%choice%"=="31" goto MainMenu

echo Invalid choice. Please try again.
goto SystemInfoMenu


:SystemMaintenanceMenu
cls
echo.
echo System Maintenance Tools
echo -----------------------------
echo 1. Run Disk Cleanup
echo 2. Run Disk Defragmenter
echo 3. Backup Registry
echo 4. Restore Registry
echo 5. Create a Temporary Folder
echo 6. Delete Temporary Files
echo 7. Check Disk Space
echo 8. Check Disk Errors
echo 9. Run CHKDSK
echo 10. Check for Pending Restarts
echo 11. Check for System Restore Points
echo 12. Create System Restore Point
echo 13. Restore System to Previous Point
echo 14. Check for System Image Backup
echo 15. Create System Image Backup
echo 16. Restore System Image Backup
echo 17. Check for File History
echo 18. Enable File History
echo 19. Disable File History
echo 20. Check for Windows Backup
echo 21. Create Windows Backup
echo 22. Restore Windows Backup
echo 23. Check for Page File Configuration
echo 24. Check for Boot Configuration Data
echo 25. Check for Boot Log
echo 26. Check for Memory Dump Files
echo 27. Check for Minidump Files
echo 28. Check for Driver Verifier Status
echo 29. Open Driver Verifier Manager
echo 30. Run System Reset
echo 31. Back to Main Menu
echo.
set /p "choice=Enter your choice (1-31): "

if "%choice%"=="1" goto Tool019
if "%choice%"=="2" goto Tool020
if "%choice%"=="3" goto Tool012
if "%choice%"=="4" goto Tool013
if "%choice%"=="5" goto Tool008
if "%choice%"=="6" goto Tool009
if "%choice%"=="7" goto Tool001
if "%choice%"=="8" goto Tool040
if "%choice%"=="9" goto Tool041
if "%choice%"=="10" goto Tool043
if "%choice%"=="11" goto Tool034
if "%choice%"=="12" goto Tool035
if "%choice%"=="13" goto Tool036
if "%choice%"=="14" goto Tool054
if "%choice%"=="15" goto Tool055
if "%choice%"=="16" goto Tool056
if "%choice%"=="17" goto Tool057
if "%choice%"=="18" goto Tool058
if "%choice%"=="19" goto Tool059
if "%choice%"=="20" goto Tool060
if "%choice%"=="21" goto Tool061
if "%choice%"=="22" goto Tool062
if "%choice%"=="23" goto Tool184
if "%choice%"=="24" goto Tool180
if "%choice%"=="25" goto Tool181
if "%choice%"=="26" goto Tool182
if "%choice%"=="27" goto Tool183
if "%choice%"=="28" goto Tool178
if "%choice%"=="29" goto Tool179
if "%choice%"=="30" goto Tool103
if "%choice%"=="31" goto MainMenu

echo Invalid choice. Please try again.
goto SystemMaintenanceMenu


:DiagnosticMenu
cls
echo.
echo Diagnostic Tools
echo ------------------
echo 1. Check CPU Usage
echo 2. Check Memory Usage
echo 3. List Running Processes
echo 4. Check Services Status
echo 5. Check Event Logs
echo 6. Check System Performance
echo 7. Check Power Settings
echo 8. Check Battery Health
echo 9. Check USB Devices
echo 10. Check Bluetooth Status
echo 11. Check Audio Devices
echo 12. Check Display Settings
echo 13. Change Screen Resolution
echo 14. Check Disk Performance
echo 15. Check Network Performance
echo 16. Check System Temperature
echo 17. Check Fan Speed
echo 18. Run Memory Diagnostic
echo 19. Check Disk Usage by Folder
echo 20. Check System Drivers
echo 21. Check for Hardware Issues
echo 22. Run Windows Performance Troubleshooter
echo 23. Run Windows Network Troubleshooter
echo 24. Run Windows Audio Troubleshooter
echo 25. Run Windows Printer Troubleshooter
echo 26. Run Windows Update Troubleshooter
echo 27. Run Windows Search Troubleshooter
echo 28. Run Windows Store Troubleshooter
echo 29. Run Windows Activation Troubleshooter
echo 30. Run Windows Backup Troubleshooter
echo 31. Launch Windows Memory Diagnostic
echo 32. Open Device Manager
echo 33. Export Critical Event Logs
echo 34. Create System Restore Point
echo 35. Create System Image Backup
echo 36. Network Route Trace
echo 37. Run DirectX Diagnostic Tool (dxdiag)
echo 38. Hardware Compatibility Check
echo 39. System Assessment Tool (WinSAT)
echo 40. Back to Main Menu
echo.
set /p "choice=Enter your choice (1-40): "

if "%choice%"=="1" goto Tool002
if "%choice%"=="2" goto Tool003
if "%choice%"=="3" goto Tool004
if "%choice%"=="4" goto Tool014
if "%choice%"=="5" goto Tool017
if "%choice%"=="6" goto Tool042
if "%choice%"=="7" goto Tool030
if "%choice%"=="8" goto Tool031
if "%choice%"=="9" goto Tool032
if "%choice%"=="10" goto Tool033
if "%choice%"=="11" goto Tool034
if "%choice%"=="12" goto Tool035
if "%choice%"=="13" goto Tool036
if "%choice%"=="14" goto Tool197
if "%choice%"=="15" goto Tool198
if "%choice%"=="16" goto Tool199
if "%choice%"=="17" goto Tool200
if "%choice%"=="18" goto Tool048
if "%choice%"=="19" goto Tool049
if "%choice%"=="20" goto Tool042
if "%choice%"=="21" goto Tool047
if "%choice%"=="22" goto Tool081
if "%choice%"=="23" goto Tool083
if "%choice%"=="24" goto Tool085
if "%choice%"=="25" goto Tool087
if "%choice%"=="26" goto Tool089
if "%choice%"=="27" goto Tool091
if "%choice%"=="28" goto Tool093
if "%choice%"=="29" goto Tool095
if "%choice%"=="30" goto Tool097
if "%choice%"=="31" goto Tool_MemDiag
if "%choice%"=="32" goto Tool_DevMgr
if "%choice%"=="33" goto Tool_EventLog
if "%choice%"=="34" goto Tool_RestorePoint
if "%choice%"=="35" goto Tool_SystemImage
if "%choice%"=="36" goto Tool_NetTrace
if "%choice%"=="37" goto Tool_DXDiag
if "%choice%"=="38" goto Tool_HWCompat
if "%choice%"=="39" goto Tool_WinSAT
if "%choice%"=="40" goto MainMenu

echo Invalid choice. Please try again.
goto DiagnosticMenu

:Tool_MemDiag
echo Running Windows Memory Diagnostic...
mdsched.exe
echo Windows Memory Diagnostic has been scheduled to run on next restart.
pause
goto DiagnosticMenu

:Tool_DevMgr
echo Opening Device Manager...
start devmgmt.msc
pause
goto DiagnosticMenu

:Tool_EventLog
echo Exporting Critical Event Logs...
wevtutil epl System SystemLog.evtx
wevtutil epl Application AppLog.evtx
wevtutil qe System /q:"*[System[(Level=1 or Level=2)]]" /f:text > CriticalSystemEvents.txt
wevtutil qe Application /q:"*[System[(Level=1 or Level=2)]]" /f:text > CriticalAppEvents.txt
echo Logs exported to current directory.
pause
goto DiagnosticMenu

:Tool_RestorePoint
echo Creating System Restore Point...
powershell -Command "Checkpoint-Computer -Description 'Manual Restore Point' -RestorePointType 'MODIFY_SETTINGS'"
echo System Restore Point created.
pause
goto DiagnosticMenu

:Tool_SystemImage
echo Creating System Image Backup...
wbadmin start backup -backupTarget:C: -include:C: -allCritical -quiet
echo System Image Backup initiated.
pause
goto DiagnosticMenu

:Tool_NetTrace
echo Running Network Route Trace...
set /p "target=Enter target address to trace: "
tracert %target%
pause
goto DiagnosticMenu

:Tool_DXDiag
echo Running DirectX Diagnostic Tool...
dxdiag /t dxdiag_report.txt
echo Report saved to dxdiag_report.txt
pause
goto DiagnosticMenu

:Tool_HWCompat
echo Checking Hardware Compatibility...
msdt.exe -id DeviceDiagnostic
pause
goto DiagnosticMenu

:Tool_WinSAT
echo Running System Assessment Tool...
winsat formal
echo Assessment complete. View results with 'winsat scores'
pause
goto DiagnosticMenu

:NetworkingMenu
cls
echo.
echo Networking Tools
echo ------------------
echo 1. Ping a Website
echo 2. Check Network Configuration
echo 3. Flush DNS Cache
echo 4. Show IP Configuration
echo 5. Check Network Speed
echo 6. Check IP Configuration
echo 7. Check DNS Configuration
echo 8. Check Proxy Settings
echo 9. Check VPN Status
echo 10. Check Remote Desktop Status
echo 11. Enable Remote Desktop
echo 12. Disable Remote Desktop
echo 13. Reset Network Settings
echo 14. Check Firewall Status
echo 15. Enable Windows Firewall
echo 16. Disable Windows Firewall
echo 17. Check for Windows Firewall Rules
echo 18. Add Firewall Rule
echo 19. Remove Firewall Rule
echo 20. Check for Network Shares
echo 21. Add Network Share
echo 22. Remove Network Share
echo 23. Check Winsock Configuration
echo 24. Check Proxy Settings
echo 25. Check Default Gateway
echo 26. Check DNS Servers
echo 27. Check DHCP Server
echo 28. Check IP Addresses
echo 29. Check MAC Addresses
echo 30. Network Connection Test Suite
echo 31. View Active TCP Connections
echo 32. Network Interface Statistics
echo 33. Back to Main Menu
echo.
set /p "choice=Enter your choice (1-33): "

if "%choice%"=="1" goto Tool006
if "%choice%"=="2" goto Tool007
if "%choice%"=="3" goto Tool005
if "%choice%"=="4" goto Tool007
if "%choice%"=="5" goto Tool050
if "%choice%"=="6" goto Tool051
if "%choice%"=="7" goto Tool052
if "%choice%"=="8" goto Tool053
if "%choice%"=="9" goto Tool054
if "%choice%"=="10" goto Tool055
if "%choice%"=="11" goto Tool056
if "%choice%"=="12" goto Tool057
if "%choice%"=="13" goto Tool005
if "%choice%"=="14" goto Tool037
if "%choice%"=="15" goto Tool038
if "%choice%"=="16" goto Tool039
if "%choice%"=="17" goto Tool084
if "%choice%"=="18" goto Tool085
if "%choice%"=="19" goto Tool086
if "%choice%"=="20" goto Tool087
if "%choice%"=="21" goto Tool088
if "%choice%"=="22" goto Tool089
if "%choice%"=="23" goto Tool169
if "%choice%"=="24" goto Tool170
if "%choice%"=="25" goto Tool166
if "%choice%"=="26" goto Tool167
if "%choice%"=="27" goto Tool168
if "%choice%"=="28" goto Tool164
if "%choice%"=="29" goto Tool165
if "%choice%"=="30" goto Tool_NetTest
if "%choice%"=="31" goto Tool_TCPView
if "%choice%"=="32" goto Tool_NetStats
if "%choice%"=="33" goto MainMenu

echo Invalid choice. Please try again.
goto NetworkingMenu

:Tool_NetTest
echo Running Network Test Suite...
echo Testing DNS Resolution...
nslookup google.com
echo.
echo Testing Network Connectivity...
pathping 8.8.8.8
echo.
echo Testing Network Interface...
netsh interface ipv4 show interfaces
pause
goto NetworkingMenu

:Tool_TCPView
echo Viewing Active TCP Connections...
netstat -abno
pause
goto NetworkingMenu

:Tool_NetStats
echo Viewing Network Interface Statistics...
netstat -e -s
pause
goto NetworkingMenu

:SecurityMenu
cls
echo.
echo Security Tools
echo ----------------
echo 1. Run Antivirus Scan
echo 2. Check for Malware
echo 3. Check Windows Defender Status
echo 4. Enable Windows Defender
echo 5. Disable Windows Defender
echo 6. Check for Windows Defender Scans
echo 7. Run Windows Defender Quick Scan
echo 8. Run Windows Defender Full Scan
echo 9. Check for Windows Defender Updates
echo 10. Update Windows Defender
echo 11. Check Windows Firewall Status
echo 12. Enable Windows Firewall
echo 13. Disable Windows Firewall
echo 14. Check for Windows Firewall Rules
echo 15. Add Firewall Rule
echo 16. Remove Firewall Rule
echo 17. Check for User Account Control Settings
echo 18. Check for Local Security Policy
echo 19. Check for User Rights Assignment
echo 20. Check for Audit Policy
echo 21. Check for Security Options
echo 22. Check for Software Restriction Policies
echo 23. Check for AppLocker Policies
echo 24. Check for TPM Status
echo 25. Check for Secure Boot Status
echo 26. Check for BitLocker Status
echo 27. Enable BitLocker
echo 28. Check for Credential Manager
echo 29. Add Credential
echo 30. Remove Credential
echo 31. Back to Main Menu
echo.
set /p "choice=Enter your choice (1-31): "

if "%choice%"=="1" goto Tool001
if "%choice%"=="2" goto Tool024
if "%choice%"=="3" goto Tool040
if "%choice%"=="4" goto Tool041
if "%choice%"=="5" goto Tool042
if "%choice%"=="6" goto Tool090
if "%choice%"=="7" goto Tool091
if "%choice%"=="8" goto Tool092
if "%choice%"=="9" goto Tool093
if "%choice%"=="10" goto Tool094
if "%choice%"=="11" goto Tool037
if "%choice%"=="12" goto Tool038
if "%choice%"=="13" goto Tool039
if "%choice%"=="14" goto Tool084
if "%choice%"=="15" goto Tool085
if "%choice%"=="16" goto Tool086
if "%choice%"=="17" goto Tool173
if "%choice%"=="18" goto Tool090
if "%choice%"=="19" goto Tool091
if "%choice%"=="20" goto Tool092
if "%choice%"=="21" goto Tool093
if "%choice%"=="22" goto Tool094
if "%choice%"=="23" goto Tool095
if "%choice%"=="24" goto Tool077
if "%choice%"=="25" goto Tool078
if "%choice%"=="26" goto Tool079
if "%choice%"=="27" goto Tool080
if "%choice%"=="28" goto Tool081
if "%choice%"=="29" goto Tool082
if "%choice%"=="30" goto Tool083
if "%choice%"=="31" goto MainMenu

echo Invalid choice. Please try again.
goto SecurityMenu


:TroubleshootingMenu
cls
echo.
echo Troubleshooting Tools
echo -----------------------
echo 1. Run Power Troubleshooter
echo 2. Run Startup Repair
echo 3. Run System File Checker
echo 4. Run Windows Update Troubleshooter
echo 5. Run Windows Search Troubleshooter
echo 6. Run Windows Store Troubleshooter
echo 7. Run Windows Activation Troubleshooter
echo 8. Run Windows Backup Troubleshooter
echo 9. Run Windows Performance Troubleshooter
echo 10. Run Windows Network Troubleshooter
echo 11. Run Windows Audio Troubleshooter
echo 12. Run Windows Printer Troubleshooter
echo 13. Run Windows File Recovery
echo 14. Run Windows System Restore
echo 15. Run Windows System Reset
echo 16. Access Windows Recovery Environment
echo 17. Check for Windows Error Reporting
echo 18. Enable Windows Error Reporting
echo 19. Disable Windows Error Reporting
echo 20. Check for Windows Feedback
echo 21. Enable Windows Feedback
echo 22. Disable Windows Feedback
echo 23. Check for Windows Insider Program
echo 24. Join Windows Insider Program
echo 25. Leave Windows Insider Program
echo 26. Check for Windows Update Status
echo 27. Install Update
echo 28. Uninstall Update
echo 29. Check for Pending Updates
echo 30. Check for Installed Updates
echo 31. Back to Main Menu
echo.
set /p "choice=Enter your choice (1-31): "

if "%choice%"=="1" goto Tool006
if "%choice%"=="2" goto Tool008
if "%choice%"=="3" goto Tool011
if "%choice%"=="4" goto Tool089
if "%choice%"=="5" goto Tool091
if "%choice%"=="6" goto Tool093
if "%choice%"=="7" goto Tool095
if "%choice%"=="8" goto Tool097
if "%choice%"=="9" goto Tool081
if "%choice%"=="10" goto Tool083
if "%choice%"=="11" goto Tool085
if "%choice%"=="12" goto Tool087
if "%choice%"=="13" goto Tool099
if "%choice%"=="14" goto Tool101
if "%choice%"=="15" goto Tool103
if "%choice%"=="16" goto Tool053
if "%choice%"=="17" goto Tool043
if "%choice%"=="18" goto Tool044
if "%choice%"=="19" goto Tool045
if "%choice%"=="20" goto Tool046
if "%choice%"=="21" goto Tool047
if "%choice%"=="22" goto Tool048
if "%choice%"=="23" goto Tool049
if "%choice%"=="24" goto Tool050
if "%choice%"=="25" goto Tool051
if "%choice%"=="26" goto Tool010
if "%choice%"=="27" goto Tool027
if "%choice%"=="28" goto Tool025
if "%choice%"=="29" goto Tool026
if "%choice%"=="30" goto Tool024
if "%choice%"=="31" goto MainMenu

echo Invalid choice. Please try again.
goto TroubleshootingMenu


:PerformanceMenu
cls
echo.
echo Performance Tools
echo -------------------
echo 1. Check CPU Usage
echo 2. Check Memory Usage
echo 3. List Running Processes
echo 4. Check Services Status
echo 5. Check Disk Performance
echo 6. Check Network Performance
echo 7. Check System Temperature
echo 8. Check Fan Speed
echo 9. Open Windows Performance Monitor
echo 10. Open Windows Resource Monitor
echo 11. Open Windows Reliability Monitor
echo 12. Check System Performance
echo 13. Check Power Configuration
echo 14. Check Sleep Study Report
echo 15. Check Battery Report
echo 16. Check System Power Efficiency Diagnostics Report
echo 17. Check for Windows Task Scheduler
echo 18. Create Scheduled Task
echo 19. Delete Scheduled Task
echo 20. Run Scheduled Task
echo 21. Hardware Resource Usage
echo 22. Monitor Color Calibration
echo 23. System Stability Check
echo 24. Back to Main Menu
echo.
set /p "choice=Enter your choice (1-24): "

if "%choice%"=="1" goto Tool002
if "%choice%"=="2" goto Tool003
if "%choice%"=="3" goto Tool004
if "%choice%"=="4" goto Tool014
if "%choice%"=="5" goto Tool197
if "%choice%"=="6" goto Tool198
if "%choice%"=="7" goto Tool199
if "%choice%"=="8" goto Tool200
if "%choice%"=="9" goto Tool074
if "%choice%"=="10" goto Tool076
if "%choice%"=="11" goto Tool080
if "%choice%"=="12" goto Tool042
if "%choice%"=="13" goto Tool174
if "%choice%"=="14" goto Tool175
if "%choice%"=="15" goto Tool176
if "%choice%"=="16" goto Tool177
if "%choice%"=="17" goto Tool065
if "%choice%"=="18" goto Tool066
if "%choice%"=="19" goto Tool067
if "%choice%"=="20" goto Tool068
if "%choice%"=="21" goto Tool_HWResources
if "%choice%"=="22" goto Tool_ColorCal
if "%choice%"=="23" goto Tool_StabilityCheck
if "%choice%"=="24" goto MainMenu

echo Invalid choice. Please try again.
goto PerformanceMenu

:Tool_HWResources
echo Checking Hardware Resource Usage...
echo CPU Interrupts and DPC:
powershell "Get-WmiObject Win32_PerfFormattedData_PerfOS_Processor | Select PercentInterruptTime, PercentDPCTime"
echo.
echo PCI Bus Load:
powershell "Get-WmiObject Win32_PerfFormattedData_PerfOS_Objects | Select MutexRate, ThreadRate"
pause
goto PerformanceMenu

:Tool_ColorCal
echo Launching Monitor Color Calibration...
dccw.exe
pause
goto PerformanceMenu

:Tool_StabilityCheck
echo Running System Stability Check...
powershell "Get-WinEvent -FilterHashtable @{LogName='System'; Level=2,3} -MaxEvents 50 | Format-Table TimeCreated,LevelDisplayName,Message -AutoSize"
pause
goto PerformanceMenu

:SoftwareMenu
cls
echo.
echo Software Tools
echo ---------------
echo 1. Check for Installed Software
echo 2. Uninstall Software
echo 3. Install Software
echo 4. Check for Windows Features
echo 5. Enable Windows Feature
echo 6. Disable Windows Feature
echo 7. Check for Optional Features
echo 8. Install Optional Features
echo 9. Check for Windows Subsystem for Linux
echo 10. Enable/Disable WSL
echo 11. Check Hyper-V Status
echo 12. Enable/Disable Hyper-V
echo 13. Check for Virtualization Support
echo 14. Check for .NET Framework Versions
echo 15. Check for Java Version
echo 16. Check for Python Version
echo 17. Check for Node.js Version
echo 18. Check for PowerShell Version
echo 19. Check for DirectX Version
echo 20. Check for OpenGL Version
echo 21. Back to Main Menu
echo.
set /p "choice=Enter your choice (1-21): "

if "%choice%"=="1" goto Tool031
if "%choice%"=="2" goto Tool032
if "%choice%"=="3" goto Tool033
if "%choice%"=="4" goto Tool021
if "%choice%"=="5" goto Tool022
if "%choice%"=="6" goto Tool023
if "%choice%"=="7" goto Tool028
if "%choice%"=="8" goto Tool029
if "%choice%"=="9" goto Tool070
if "%choice%"=="10" goto Tool071
if "%choice%"=="11" goto Tool072
if "%choice%"=="12" goto Tool073
if "%choice%"=="13" goto Tool074
if "%choice%"=="14" goto Tool192
if "%choice%"=="15" goto Tool193
if "%choice%"=="16" goto Tool194
if "%choice%"=="17" goto Tool195
if "%choice%"=="18" goto Tool196
if "%choice%"=="19" goto Tool190
if "%choice%"=="20" goto Tool191
if "%choice%"=="21" goto MainMenu

echo Invalid choice. Please try again.
goto SoftwareMenu


:WindowsAccessMenu
cls
echo.
echo Windows Access Tools
echo ---------------------
echo 1. Open Windows Mobility Center
echo 2. Open Windows Performance Monitor
echo 3. Open Windows Resource Monitor
echo 4. Open Windows Event Viewer
echo 5. Open Windows Reliability Monitor
echo 6. Boot into Safe Mode
echo 7. Open Windows Command Prompt
echo 8. Open Windows PowerShell
echo 9. Open Windows Terminal
echo 10. Open Windows Task Manager
echo 11. Open Windows Settings
echo 12. Open Windows Control Panel
echo 13. Open Windows File Explorer
echo 14. Open Windows Run Dialog
echo 15. Open Windows Search
echo 16. Open Windows Snipping Tool
echo 17. Open Windows Calculator
echo 18. Open Windows Notepad
echo 19. Open Windows Paint
echo 20. Open Windows WordPad
echo 21. Open Windows Media Player
echo 22. Open Windows Photos
echo 23. Open Windows Music
echo 24. Open Windows Movies & TV
echo 25. Open Windows Store
echo 26. Open Driver Verifier Manager
echo 27. User Account Control Settings
echo 28. Access Windows Recovery Environment
echo 29. Windows Safe Mode Check
echo 30. Windows Command Prompt Check
echo 31. Windows PowerShell Check
echo 32. Windows Terminal Check
echo 33. Windows Task Manager Check
echo 34. Windows Settings Check
echo 35. Windows Control Panel Check
echo 36. Windows File Explorer Check
echo 37. Windows Run Dialog Check
echo 38. Windows Search Check
echo 39. Windows Snipping Tool Check
echo 40. Windows Calculator Check
echo 41. Windows Notepad Check
echo 42. Windows Paint Check
echo 43. Windows WordPad Check
echo 44. Windows Media Player Check
echo 45. Windows Photos Check
echo 46. Windows Music Check
echo 47. Windows Movies & TV Check
echo 48. Windows Store Check
echo 49. Back to Main Menu
echo.
set /p "choice=Enter your choice (1-49): "

if "%choice%"=="1" goto Tool064
if "%choice%"=="2" goto Tool074
if "%choice%"=="3" goto Tool076
if "%choice%"=="4" goto Tool078
if "%choice%"=="5" goto Tool080
if "%choice%"=="6" goto Tool105
if "%choice%"=="7" goto Tool107
if "%choice%"=="8" goto Tool109
if "%choice%"=="9" goto Tool111
if "%choice%"=="10" goto Tool113
if "%choice%"=="11" goto Tool115
if "%choice%"=="12" goto Tool117
if "%choice%"=="13" goto Tool119
if "%choice%"=="14" goto Tool121
if "%choice%"=="15" goto Tool123
if "%choice%"=="16" goto Tool125
if "%choice%"=="17" goto Tool127
if "%choice%"=="18" goto Tool129
if "%choice%"=="19" goto Tool131
if "%choice%"=="20" goto Tool133
if "%choice%"=="21" goto Tool135
if "%choice%"=="22" goto Tool137
if "%choice%"=="23" goto Tool139
if "%choice%"=="24" goto Tool141
if "%choice%"=="25" goto Tool143
if "%choice%"=="26" goto Tool179
if "%choice%"=="27" goto Tool173
if "%choice%"=="28" goto Tool110
if "%choice%"=="29" goto Tool104
if "%choice%"=="30" goto Tool106
if "%choice%"=="31" goto Tool108
if "%choice%"=="32" goto Tool110
if "%choice%"=="33" goto Tool112
if "%choice%"=="34" goto Tool114
if "%choice%"=="35" goto Tool116
if "%choice%"=="36" goto Tool118
if "%choice%"=="37" goto Tool120
if "%choice%"=="38" goto Tool122
if "%choice%"=="39" goto Tool124
if "%choice%"=="40" goto Tool126
if "%choice%"=="41" goto Tool128
if "%choice%"=="42" goto Tool130
if "%choice%"=="43" goto Tool132
if "%choice%"=="44" goto Tool134
if "%choice%"=="45" goto Tool136
if "%choice%"=="46" goto Tool138
if "%choice%"=="47" goto Tool140
if "%choice%"=="48" goto Tool142
if "%choice%"=="49" goto MainMenu

echo Invalid choice. Please try again.
goto WindowsAccessMenu

:WiFiMenu
cls
echo.
echo WiFi Network Manager
echo -------------------
echo 1. Show Available Networks
echo 2. Connect to Network
echo 3. Forget Network
echo 4. Show Saved Networks
echo 5. Show Network Status
echo 6. Generate WiFi Report
echo 7. Show WiFi Password
echo 8. Enable WiFi
echo 9. Disable WiFi
echo 10. Back to Main Menu
echo.
set /p "choice=Enter your choice (1-10): "

if "%choice%"=="1" goto Tool201
if "%choice%"=="2" goto Tool202
if "%choice%"=="3" goto Tool203
if "%choice%"=="4" goto Tool204
if "%choice%"=="5" goto Tool205
if "%choice%"=="6" goto Tool206
if "%choice%"=="7" goto Tool207
if "%choice%"=="8" goto Tool208
if "%choice%"=="9" goto Tool209
if "%choice%"=="10" goto MainMenu

echo Invalid choice. Please try again.
goto WiFiMenu

:AppManagementMenu
cls
echo.
echo App Management Tools
echo -------------------
echo 1. List Installed Apps
echo 2. Remove App
echo 3. Repair App
echo 4. Reset App
echo 5. Start App
echo 6. Stop App
echo 7. Check App Status
echo 8. Check App Dependencies
echo 9. Back to Main Menu
echo.
set /p "choice=Enter your choice (1-9): "

if "%choice%"=="1" goto Tool210
if "%choice%"=="2" goto Tool211
if "%choice%"=="3" goto Tool212
if "%choice%"=="4" goto Tool213
if "%choice%"=="5" goto Tool214
if "%choice%"=="6" goto Tool215
if "%choice%"=="7" goto Tool216
if "%choice%"=="8" goto Tool217
if "%choice%"=="9" goto MainMenu

echo Invalid choice. Please try again.
goto AppManagementMenu

:PrivacyMenu
cls
echo.
echo Privacy Settings
echo ---------------
echo 1. Check Privacy Settings
echo 2. Manage App Permissions
echo 3. Location Settings
echo 4. Camera Settings
echo 5. Microphone Settings
echo 6. Notifications Settings
echo 7. Background Apps
echo 8. Diagnostic Data
echo 9. Back to Main Menu
echo.
set /p "choice=Enter your choice (1-9): "

if "%choice%"=="1" goto Tool220
if "%choice%"=="2" goto Tool221
if "%choice%"=="3" goto Tool222
if "%choice%"=="4" goto Tool223
if "%choice%"=="5" goto Tool224
if "%choice%"=="6" goto Tool225
if "%choice%"=="7" goto Tool226
if "%choice%"=="8" goto Tool227
if "%choice%"=="9" goto MainMenu

echo Invalid choice. Please try again.
goto PrivacyMenu

:ModernWindowsMenu
cls
echo.
echo Modern Windows Features
echo ---------------------
echo 1. Check Windows Hello Status
echo 2. Manage Virtual Desktops
echo 3. Manage Snap Layouts
echo 4. Check Widget Status
echo 5. Android Apps Support
echo 6. DirectStorage Status
echo 7. Auto HDR Status
echo 8. Back to Main Menu
echo.
set /p "choice=Enter your choice (1-8): "

if "%choice%"=="1" goto Tool230
if "%choice%"=="2" goto Tool231
if "%choice%"=="3" goto Tool232
if "%choice%"=="4" goto Tool233
if "%choice%"=="5" goto Tool234
if "%choice%"=="6" goto Tool235
if "%choice%"=="7" goto Tool236
if "%choice%"=="8" goto MainMenu

echo Invalid choice. Please try again.
goto ModernWindowsMenu

:DiskHealthMenu
cls
echo.
echo Disk Health Monitor
echo ------------------
echo 1. Check SMART Status
echo 2. View Disk Health Report
echo 3. Check Bad Sectors
echo 4. Disk Performance Stats
echo 5. Disk Temperature
echo 6. SSD Life Status
echo 7. Disk Error History
echo 8. Back to Main Menu
echo.
set /p "choice=Enter your choice (1-8): "

if "%choice%"=="1" goto Tool240
if "%choice%"=="2" goto Tool241
if "%choice%"=="3" goto Tool242
if "%choice%"=="4" goto Tool243
if "%choice%"=="5" goto Tool244
if "%choice%"=="6" goto Tool245
if "%choice%"=="7" goto Tool246
if "%choice%"=="8" goto MainMenu

echo Invalid choice. Please try again.
goto DiskHealthMenu

:SecurityCenterMenu
cls
echo.
echo Security Center
echo --------------
echo 1. Security Health Check
echo 2. Ransomware Protection Status
echo 3. Core Isolation Status
echo 4. App & Browser Control
echo 5. Exploit Protection Settings
echo 6. Network Protection Status
echo 7. Controlled Folder Access
echo 8. Back to Main Menu
echo.
set /p "choice=Enter your choice (1-8): "

if "%choice%"=="1" goto Tool250
if "%choice%"=="2" goto Tool251
if "%choice%"=="3" goto Tool252
if "%choice%"=="4" goto Tool253
if "%choice%"=="5" goto Tool254
if "%choice%"=="6" goto Tool255
if "%choice%"=="7" goto Tool256
if "%choice%"=="8" goto MainMenu

echo Invalid choice. Please try again.
goto SecurityCenterMenu

:AdvancedDiagnosticsMenu
cls
echo.
echo Advanced Diagnostics Tools
echo -------------------------
echo 1. Reliability History Report
echo 2. Component Store Analysis
echo 3. Group Policy Results
echo 4. PCI Device Check
echo 5. Memory Leak Detection
echo 6. Driver Status Report
echo 7. Boot Configuration Analysis
echo 8. Service Dependencies Map
echo 9. Hardware Resource Conflicts
echo 10. System File Version Check
echo 11. Registry Size Analysis
echo 12. Active Port Connections
echo 13. Pending File Operations
echo 14. Disk Queue Analysis
echo 15. Process Handle Count
echo 16. DNS Cache Status
echo 17. VSS Writer Status
echo 18. Disk Write Cache Config
echo 19. Memory Dump Analysis
echo 20. System Pool Usage
echo 21. Active Directory Health
echo 22. Print Spooler Status
echo 23. Windows Installer State
echo 24. User Profile Analysis
echo 25. System Access Check
echo 26. Back to Main Menu
echo.
set /p "choice=Enter your choice (1-26): "

if "%choice%"=="1" goto Tool_ReliabilityReport
if "%choice%"=="2" goto Tool_ComponentStore
if "%choice%"=="3" goto Tool_GPResults
if "%choice%"=="4" goto Tool_PCICheck
if "%choice%"=="5" goto Tool_MemoryLeak
if "%choice%"=="6" goto Tool_DriverReport
if "%choice%"=="7" goto Tool_BootConfig
if "%choice%"=="8" goto Tool_ServiceMap
if "%choice%"=="9" goto Tool_ResourceConflicts
if "%choice%"=="10" goto Tool_FileVersions
if "%choice%"=="11" goto Tool_RegistrySize
if "%choice%"=="12" goto Tool_ActivePorts
if "%choice%"=="13" goto Tool_PendingOps
if "%choice%"=="14" goto Tool_DiskQueue
if "%choice%"=="15" goto Tool_HandleCount
if "%choice%"=="16" goto Tool_DNSCache
if "%choice%"=="17" goto Tool_VSSStatus
if "%choice%"=="18" goto Tool_WriteCache
if "%choice%"=="19" goto Tool_DumpAnalysis
if "%choice%"=="20" goto Tool_PoolUsage
if "%choice%"=="21" goto Tool_ADHealth
if "%choice%"=="22" goto Tool_PrintSpooler
if "%choice%"=="23" goto Tool_MSIState
if "%choice%"=="24" goto Tool_UserProfile
if "%choice%"=="25" goto Tool_SysAccess
if "%choice%"=="26" goto MainMenu

:Tool_ReliabilityReport
1095 | 
1096 | :SponsorshipMenu
1097 |  cls
1098 |  echo.
1099 |  echo Sponsorship
1100 |  echo -----------
1101 |  echo If you are interested in sponsoring this tool,
1102 |  echo your link can be placed in this menu!
1103 |  echo.
1104 |  echo Website: https://www.jtgsystems.com
1105 |  echo.
1106 |  pause
1107 |  goto MainMenu
1108 | 
1096 | :Tool_ReliabilityReport
echo Generating System Reliability Report...
powershell "Get-WinEvent -LogName Microsoft-Windows-Reliability/Operational | Where-Object { $_.LevelDisplayName -eq 'Error' } | Format-Table TimeCreated, Message -AutoSize" > reliability_report.txt
echo Report saved to reliability_report.txt
pause
goto AdvancedDiagnosticsMenu

:Tool_ComponentStore
echo Analyzing Windows Component Store...
Dism /Online /Cleanup-Image /AnalyzeComponentStore
pause
goto AdvancedDiagnosticsMenu

:Tool_GPResults
echo Generating Group Policy Results...
gpresult /H gp_report.html
start gp_report.html
pause
goto AdvancedDiagnosticsMenu

:Tool_PCICheck
echo Checking PCI Devices and Resources...
powershell "Get-WmiObject Win32_PnPEntity | Where-Object {$_.ConfigManagerErrorCode -ne 0} | Format-Table Name,DeviceID,ConfigManagerErrorCode"
pause
goto AdvancedDiagnosticsMenu

:Tool_MemoryLeak
echo Detecting Potential Memory Leaks...
powershell "Get-Process | Sort-Object -Property WorkingSet -Descending | Select-Object -First 10 | Format-Table Name,WorkingSet,PrivateMemorySize,HandleCount"
pause
goto AdvancedDiagnosticsMenu

:Tool_DriverReport
echo Generating Driver Status Report...
powershell "Get-WmiObject Win32_PnPSignedDriver | Select-Object DeviceName,DriverVersion,IsSigned | Format-Table -AutoSize" > driver_report.txt
echo Report saved to driver_report.txt
pause
goto AdvancedDiagnosticsMenu

:Tool_BootConfig
echo Analyzing Boot Configuration...
bcdedit /enum CURRENT
pause
goto AdvancedDiagnosticsMenu

:Tool_ServiceMap
echo Mapping Service Dependencies...
sc queryex type= service state= all > service_map.txt
echo Service map saved to service_map.txt
pause
goto AdvancedDiagnosticsMenu

:Tool_ResourceConflicts
echo Checking Hardware Resource Conflicts...
powershell "Get-WmiObject Win32_DeviceMemoryAddress | Format-Table StartingAddress,EndingAddress,MemoryType,Name"
pause
goto AdvancedDiagnosticsMenu

:Tool_FileVersions
echo Checking System File Versions...
powershell "Get-ChildItem $env:windir\System32 -Filter *.dll | ForEach-Object { $_.VersionInfo } | Format-Table FileName,FileVersion"
pause
goto AdvancedDiagnosticsMenu

:Tool_RegistrySize
echo Analyzing Registry Size...
reg query "HKLM\System\CurrentControlSet\Control\Session Manager\Memory Management" /v "Paged Pool Size"
pause
goto AdvancedDiagnosticsMenu

:Tool_ActivePorts
echo Checking Active Port Connections...
netstat -abno > port_connections.txt
echo Port connections saved to port_connections.txt
pause
goto AdvancedDiagnosticsMenu

:Tool_PendingOps
echo Checking Pending File Operations...
reg query "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager" /v PendingFileRenameOperations
pause
goto AdvancedDiagnosticsMenu

:Tool_DiskQueue
echo Analyzing Disk Queue Length...
typeperf "\PhysicalDisk(_Total)\Current Disk Queue Length" -sc 10
pause
goto AdvancedDiagnosticsMenu

:Tool_HandleCount
echo Checking Process Handle Count...
powershell "Get-Process | Sort-Object HandleCount -Descending | Select-Object -First 10 Name,HandleCount,WorkingSet"
pause
goto AdvancedDiagnosticsMenu

:Tool_DNSCache
echo Displaying DNS Cache Status...
ipconfig /displaydns > dns_cache.txt
echo DNS cache saved to dns_cache.txt
pause
goto AdvancedDiagnosticsMenu

:Tool_VSSStatus
echo Checking Volume Shadow Copy Status...
vssadmin list writers
pause
goto AdvancedDiagnosticsMenu

:Tool_WriteCache
echo Checking Disk Write Cache Configuration...
powershell "Get-WmiObject -Class Win32_DiskDrive | Select-Object Model,Caption,WriteCache"
pause
goto AdvancedDiagnosticsMenu

:Tool_DumpAnalysis
echo Analyzing Memory Dump Files...
dir /s %SystemRoot%\Minidump\*.dmp
echo Use Windows Debugger for detailed analysis
pause
goto AdvancedDiagnosticsMenu

:Tool_PoolUsage
echo Checking System Pool Usage...
poolmon -b > pool_usage.txt
echo Pool usage saved to pool_usage.txt
pause
goto AdvancedDiagnosticsMenu

:Tool_ADHealth
echo Checking Active Directory Health...
dcdiag /v > ad_health.txt
echo AD health report saved to ad_health.txt
pause
goto AdvancedDiagnosticsMenu

:Tool_PrintSpooler
echo Analyzing Print Spooler Status...
net stop spooler && del /Q /F /S %systemroot%\System32\spool\PRINTERS\* && net start spooler
echo Print Spooler reset complete
pause
goto AdvancedDiagnosticsMenu

:Tool_MSIState
echo Checking Windows Installer State...
reg query HKLM\System\CurrentControlSet\Services\msiserver
pause
goto AdvancedDiagnosticsMenu

:Tool_UserProfile
echo Analyzing User Profiles...
powershell "Get-WmiObject Win32_UserProfile | Select-Object LocalPath,LastUseTime,Special,Loaded | Format-Table -AutoSize"
pause
goto AdvancedDiagnosticsMenu

:Tool_SysAccess
echo Checking System Access Controls...
secedit /export /cfg security_config.txt
echo Security configuration exported to security_config.txt
pause
goto AdvancedDiagnosticsMenu

:Exit
cls
echo Exiting Combined Tools.
exit


:: Tool Definitions (Tools 1-200 - already defined previously)
:Tool001
echo Running Tool 001: Run Antivirus Scan...
start "" "%ProgramFiles%\Windows Defender\MSASCui.exe" -FullScan
pause
goto MainMenu

:Tool002
echo Running Tool 002: Check CPU Usage...
wmic cpu get loadpercentage
pause
goto MainMenu

:Tool003
echo Running Tool 003: Check Memory Usage...
wmic OS get FreePhysicalMemory, TotalVisibleMemorySize /Value
pause
goto MainMenu

:Tool004
echo Running Tool 004: List Running Processes...
tasklist
pause
goto MainMenu

:Tool005
echo Running Tool 005: Reset Network Settings...
netsh winsock reset & netsh int ip reset
pause
goto MainMenu

:Tool006
echo Running Tool 006: Run Power Troubleshooter...
msdt.exe -id PowerDiagnostic
pause
goto MainMenu

:Tool007
echo Running Tool 007: Show IP Configuration...
ipconfig /all
pause
goto MainMenu

:Tool008
echo Running Tool 008: Run Startup Repair...
start "" "%windir%\system32\RecoveryDrive.exe"
pause
goto MainMenu

:Tool009
echo Running Tool 009: Delete Temporary Files...
del /f /s /q %temp%\*
echo Temporary files deleted.
pause
goto MainMenu

:Tool010
echo Running Tool 010: Check Windows Update Status...
powershell -command "Get-WindowsUpdateLog"
pause
goto MainMenu

:Tool011
echo Running Tool 011: Run System File Checker...
sfc /scannow
pause
goto MainMenu

:Tool012
echo Running Tool 012: Backup Registry...
reg export HKEY_LOCAL_MACHINE "RegistryBackup.reg" /y
pause
goto MainMenu

:Tool013
echo Running Tool 013: Restore Registry...
reg import "RegistryBackup.reg"
pause
goto MainMenu

:Tool014
echo Running Tool 014: Check Services Status...
tasklist /svc
pause
goto MainMenu

:Tool015
echo Running Tool 015: Start Windows Service...
echo Please enter service name in next prompt
set /p serviceName="Enter Service Name: "
net start "%serviceName%"
pause
goto MainMenu

:Tool016
echo Running Tool 016: Stop Windows Service...
echo Please enter service name in next prompt
set /p serviceName="Enter Service Name: "
net stop "%serviceName%"
pause
goto MainMenu

:Tool017
echo Running Tool 017: Check Event Logs...
eventvwr.msc
pause
goto MainMenu

:Tool018
echo Running Tool 018: Check System Information...
systeminfo
pause
goto MainMenu

:Tool019
echo Running Tool 019: Run Disk Cleanup...
cleanmgr /verylowdisk /d %systemdrive%
pause
goto MainMenu

:Tool020
echo Running Tool 020: Run Disk Defragmenter...
defrag %systemdrive% /O /H /M
pause
goto MainMenu

:Tool021
echo Running Tool 021: Check for Windows Features...
dism /online /get-features
pause
goto MainMenu

:Tool022
echo Running Tool 022: Enable Windows Feature...
echo Please enter feature name in next prompt
set /p featureName="Enter Feature Name: "
dism /online /enable-feature /featurename:%featureName%
pause
goto MainMenu

:Tool023
echo Running Tool 023: Disable Windows Feature...
echo Please enter feature name in next prompt
set /p featureName="Enter Feature Name: "
dism /online /disable-feature /featurename:%featureName%
pause
goto MainMenu

:Tool024
echo Running Tool 024: Check for Malware...
echo Running quick scan with Windows Defender...
"%ProgramFiles%\Windows Defender\MpCmdRun.exe" -Scan -ScanType 1
pause
goto MainMenu

:Tool025
echo Running Tool 025: Uninstall Update...
echo Please enter KB number of update to uninstall (e.g., KB5000000):
set /p kbNumber="Enter KB Number: "
wusa /uninstall /kb:%kbNumber% /quiet /norestart
echo Please restart your computer to complete the uninstall process.
pause
goto MainMenu

:Tool026
echo Running Tool 026: Check for Pending Updates...
powershell -command "(Get-WUInstall -Status Pending -Verbose).Updates | ForEach-Object {$_.Title}"
pause
goto MainMenu

:Tool027
echo Running Tool 027: Install Update...
powershell -command "Get-WUInstall -AcceptAll -Install -Verbose"
pause
goto MainMenu

:Tool028
echo Running Tool 028: Check for Optional Features...
dism /online /get-capabilities
pause
goto MainMenu

:Tool029
echo Running Tool 029: Install Optional Features...
echo Please enter capability name to install:
set /p capabilityName="Enter Capability Name: "
dism /online /add-capability /capabilityname:%capabilityName%
pause
goto MainMenu

:Tool030
echo Running Tool 030: Check Power Settings...
powercfg /q
pause
goto MainMenu

:Tool031
echo Running Tool 031: Check Battery Health...
powercfg /batteryreport /output "battery_report.html"
echo Battery health report generated at battery_report.html
start battery_report.html
pause
goto MainMenu

:Tool032
echo Running Tool 032: Check USB Devices...
wmic path Win32_USBControllerDevice get Antecedent,Dependent
pause
goto MainMenu

:Tool033
echo Running Tool 033: Check Bluetooth Status...
powershell -command "Get-PnPDevice -Class Bluetooth"
pause
goto MainMenu

:Tool034
echo Running Tool 034: Check Audio Devices...
wmic sounddev list brief
pause
goto MainMenu

:Tool035
echo Running Tool 035: Check Display Settings...
wmic desktopmonitor get Caption,ScreenWidth,ScreenHeight,pixelsperXLogicalInch,pixelsperYLogicalInch
pause
goto MainMenu

:Tool036
echo Running Tool 036: Change Screen Resolution...
echo Please enter desired screen width:
set /p screenWidth="Enter Screen Width: "
echo Please enter desired screen height:
set /p screenHeight="Enter Screen Height: "
powershell -command "Set-DisplayResolution -Width %screenWidth% -Height %screenHeight%"
pause
goto MainMenu

:Tool037
echo Running Tool 037: Check Windows Firewall Status...
netsh advfirewall show currentprofile
pause
goto MainMenu

:Tool038
echo Running Tool 038: Enable Windows Firewall...
netsh advfirewall set currentprofile state on
pause
goto MainMenu

:Tool039
echo Running Tool 039: Disable Windows Firewall...
netsh advfirewall set currentprofile state off
pause
goto MainMenu

:Tool040
echo Running Tool 040: Check Disk Errors...
chkdsk %systemdrive%
pause
goto MainMenu

:Tool041
echo Running Tool 041: Run CHKDSK (Repair)...
chkdsk %systemdrive% /f /r
echo Please restart your computer to run CHKDSK in repair mode.
pause
goto MainMenu

:Tool042
echo Running Tool 042: Check System Performance...
start perfmon
pause
goto MainMenu

:Tool043
echo Running Tool 043: Check for Pending Restarts...
if exist "%windir%\winsxs\reboot.xml" (echo Pending Restart: YES) ELSE (echo Pending Restart: NO)
pause
goto MainMenu

:Tool044
echo Running Tool 044: Enable Windows Error Reporting...
wevtutil set-config Microsoft-Windows-WER-Service /enabled:true
pause
goto MainMenu

:Tool045
echo Running Tool 045: Disable Windows Error Reporting...
wevtutil set-config Microsoft-Windows-WER-Service /enabled:false
pause
goto MainMenu

:Tool046
echo Running Tool 046: Check for Windows Feedback...
powershell -command "Get-AppxPackage -Name Microsoft.WindowsFeedbackHub"
pause
goto MainMenu

:Tool047
echo Running Tool 047: Enable Windows Feedback...
echo Windows Feedback Hub is enabled by default. No action needed.
pause
goto MainMenu

:Tool048
echo Running Tool 048: Disable Windows Feedback...
echo Windows Feedback Hub cannot be disabled through script. Please disable manually in Settings if needed.
pause
goto MainMenu

:Tool049
echo Running Tool 049: Check for Windows Insider Program...
powershell -command "Get-ItemProperty -Path 'HKLM:\SOFTWARE\Microsoft\WindowsSelfHost\UI\Selection'"
pause
goto MainMenu

:Tool050
echo Running Tool 050: Check Network Speed...
powershell -command {
    (Measure-Command {
        (New-Object System.Net.WebClient).DownloadFile('http://speedtest.tele2.net/1MB.zip', 'testfile.zip')
    }).TotalSeconds
    Remove-Item testfile.zip
}
pause
goto MainMenu

:Tool051
echo Running Tool 051: Check IP Configuration...
ipconfig
pause
goto MainMenu

:Tool052
echo Running Tool 052: Check DNS Configuration...
ipconfig /all | findstr /i "DNS Servers"
pause
goto MainMenu

:Tool053
echo Running Tool 053: Access Windows Recovery Environment...
reagentc /boottore
pause
goto MainMenu

:Tool054
echo Running Tool 054: Check VPN Status...
powershell -command "Get-VpnConnection"
pause
goto MainMenu

:Tool055
echo Running Tool 055: Check Remote Desktop Status...
qwinsta
pause
goto MainMenu

:Tool056
echo Running Tool 056: Enable Remote Desktop...
REG ADD "HKLM\System\CurrentControlSet\Control\Terminal Server" /v fDenyTSConnections /t REG_DWORD /d 0 /f
REG ADD "HKLM\System\CurrentControlSet\Control\Terminal Server\WinStations\RDP-Tcp" /v UserAuthentication /t REG_DWORD /d 1 /f
echo Remote Desktop Enabled.
pause
goto MainMenu

:Tool057
echo Running Tool 057: Disable Remote Desktop...
REG ADD "HKLM\System\CurrentControlSet\Control\Terminal Server" /v fDenyTSConnections /t REG_DWORD /d 1 /f
echo Remote Desktop Disabled.
pause
goto MainMenu

:Tool058
echo Running Tool 058: Enable File History...
fhutil /enable
pause
goto MainMenu

:Tool059
echo Running Tool 059: Disable File History...
fhutil /disable
pause
goto MainMenu

:Tool060
echo Running Tool 060: Check for Windows Backup...
sdclt
pause
goto MainMenu

:Tool061
echo Running Tool 061: Create Windows Backup...
sdclt /backup /task
pause
goto MainMenu

:Tool062
echo Running Tool 062: Restore Windows Backup...
sdclt /restore /task
pause
goto MainMenu

:Tool063
echo Running Tool 063: Check for Windows Mobility Center...
%windir%\System32\mblctr.exe
pause
goto MainMenu

:Tool064
echo Running Tool 064: Open Windows Mobility Center...
start %windir%\System32\mblctr.exe
pause
goto MainMenu

:Tool065
echo Running Tool 065: Check for Windows Task Scheduler...
taskschd.msc
pause
goto MainMenu

:Tool066
echo Running Tool 066: Create Scheduled Task...
echo Please enter task name:
set /p taskName="Enter Task Name: "
echo Please enter task command:
set /p taskCommand="Enter Task Command: "
schtasks /create /tn "%taskName%" /tr "%taskCommand%" /sc minute /mo 1
echo Scheduled task "%taskName%" created.
pause
goto MainMenu

:Tool067
echo Running Tool 067: Delete Scheduled Task...
echo Please enter task name to delete:
set /p taskNameToDelete="Enter Task Name to Delete: "
schtasks /delete /tn "%taskNameToDelete%" /f
echo Scheduled task "%taskNameToDelete%" deleted.
pause
goto MainMenu

:Tool068
echo Running Tool 068: Run Scheduled Task...
echo Please enter task name to run:
set /p taskNameToRun="Enter Task Name to Run: "
schtasks /run /tn "%taskNameToRun%"
pause
goto MainMenu

:Tool069
echo Running Tool 069: Check for Windows Services...
Get-Service | Out-GridView
pause
goto MainMenu

:Tool070
echo Running Tool 070: Check for Windows Subsystem for Linux...
wsl --status
pause
goto MainMenu

:Tool071
echo Running Tool 071: Enable/Disable WSL...
echo Enable or Disable WSL? (enable/disable):
set /p wslAction="Enter action (enable/disable): "
if /i "%wslAction%"=="enable" (
    wsl --install
) else if /i "%wslAction%"=="disable" (
    wsl --unregister Ubuntu
) else (
    echo Invalid input. Please enter 'enable' or 'disable'.
)
pause
goto MainMenu

:Tool072
echo Running Tool 072: Check Hyper-V Status...
powershell -command "Get-WindowsOptionalFeature -FeatureName Microsoft-Hyper-V-Hypervisor -Online"
pause
goto MainMenu

:Tool073
echo Running Tool 073: Enable/Disable Hyper-V...
echo Enable or Disable Hyper-V? (enable/disable):
set /p hyperVAction="Enter action (enable/disable): "
if /i "%hyperVAction%"=="enable" (
    Enable-WindowsOptionalFeature -Online -FeatureName Microsoft-Hyper-V -All
) else if /i "%hyperVAction%"=="disable" (
    Disable-WindowsOptionalFeature -Online -FeatureName Microsoft-Hyper-V
) else (
    echo Invalid input. Please enter 'enable' or 'disable'.
)
pause
goto MainMenu

:Tool074
echo Running Tool 074: Open Windows Performance Monitor...
perfmon.exe
pause
goto MainMenu

:Tool075
echo Running Tool 075: Check for Windows Resource Monitor...
resmon.exe
pause
goto MainMenu

:Tool076
echo Running Tool 076: Open Windows Resource Monitor...
start resmon.exe
pause
goto MainMenu

:Tool077
echo Running Tool 077: Check for TPM Status...
powershell -command "Get-Tpm"
pause
goto MainMenu

:Tool078
echo Running Tool 078: Open Windows Event Viewer...
eventvwr.exe
pause
goto MainMenu

:Tool79
echo Running Tool 079: Check for BitLocker Status...
powershell -command "Get-BitLockerVolume"
pause
goto MainMenu

:Tool080
echo Running Tool 080: Enable BitLocker...
echo Please enter drive letter to enable BitLocker (e.g., C):
set /p driveLetter="Enter Drive Letter: "
powershell -command "Enable-BitLocker -DriveLetter %driveLetter% -EncryptionMethod Aes256"
echo BitLocker encryption initiated for drive %driveLetter%. Please follow on-screen prompts to complete setup.
pause
goto MainMenu

:Tool081
echo Running Tool 081: Run Windows Performance Troubleshooter...
msdt.exe -id PerformanceDiagnostic
pause
goto MainMenu

:Tool082
echo Running Tool 082: Check for Credential Manager...
cmdkey /list
pause
goto MainMenu

:Tool083
echo Running Tool 083: Remove Credential...
echo Please enter target name of credential to remove:
set /p targetName="Enter Target Name: "
cmdkey /delete /target:%targetName%
pause
goto MainMenu

:Tool084
echo Running Tool 084: Check for Windows Firewall Rules...
netsh advfirewall firewall show rule name=all
pause
goto MainMenu

:Tool085
echo Running Tool 085: Add Firewall Rule...
echo Please enter rule name:
set /p ruleName="Enter Rule Name: "
echo Please enter port number:
set /p portNumber="Enter Port Number: "
netsh advfirewall firewall add rule name="%ruleName%" dir=in action=allow protocol=TCP localport=%portNumber%
pause
goto MainMenu

:Tool086
echo Running Tool 086: Remove Firewall Rule...
echo Please enter rule name to remove:
set /p ruleNameToRemove="Enter Rule Name to Remove: "
netsh advfirewall firewall delete rule name="%ruleNameToRemove%"
pause
goto MainMenu

:Tool087
echo Running Tool 087: Check for Network Shares...
net share
pause
goto MainMenu

:Tool088
echo Running Tool 088: Add Network Share...
echo Please enter share name:
set /p shareName="Enter Share Name: "
echo Please enter path to share:
set /p sharePath="Enter Share Path: "
net share "%shareName%"="%sharePath%"
pause
goto MainMenu

:Tool089
echo Running Tool 089: Run Windows Update Troubleshooter...
msdt.exe -id WindowsUpdateDiagnostic
pause
goto MainMenu

:Tool090
echo Running Tool 090: Check for Windows Defender Scans...
powershell -command "Get-MpScanHistory"
pause
goto MainMenu

:Tool091
echo Running Tool 091: Run Windows Defender Quick Scan...
"%ProgramFiles%\Windows Defender\MpCmdRun.exe" -Scan -ScanType 1
pause
goto MainMenu

:Tool092
echo Running Tool 092: Run Windows Defender Full Scan...
"%ProgramFiles%\Windows Defender\MpCmdRun.exe" -Scan -ScanType 2
pause
goto MainMenu

:Tool093
echo Running Tool 093: Check for Windows Defender Updates...
powershell -command "Get-MpComputerStatus | Select-Object AntivirusSignatureUpdateDateTime"
pause
goto MainMenu

:Tool094
echo Running Tool 094: Update Windows Defender...
"%ProgramFiles%\Windows Defender\MpCmdRun.exe" -SignatureUpdate
pause
goto MainMenu

:Tool095
echo Running Tool 095: Run Windows Activation Troubleshooter...
slui.exe
pause
goto MainMenu

:Tool096
echo Running Tool 096: Check for Windows Backup Troubleshooter...
msdt.exe -id BackupDiagnostic
pause
goto MainMenu

:Tool097
echo Running Tool 097: Run Windows Backup Troubleshooter...
msdt.exe -id BackupFileHistoryDiagnostic
pause
goto MainMenu

:Tool098
echo Running Tool 098: Check for Windows File Recovery...
winfr
pause
goto MainMenu

:Tool099
echo Running Tool 099: Run Windows File Recovery...
start winfr
pause
goto MainMenu

:Tool100
echo Running Tool 100: Check for Windows System Restore...
rstrui.exe
pause
goto MainMenu

:Tool101
echo Running Tool 101: Run Windows System Restore...
start rstrui.exe
pause
goto MainMenu

:Tool102
echo Running Tool 102: Check for Windows System Reset...
systemreset
pause
goto MainMenu

:Tool103
echo Running Tool 103: Run Windows System Reset...
start systemreset
pause
goto MainMenu

:Tool104
echo Running Tool 104: Windows Safe Mode Check...
echo Check msconfig for Boot options to configure Safe Mode
msconfig
pause
goto MainMenu

:Tool105
echo Running Tool 105: Boot into Safe Mode...
echo Configure Safe Boot in msconfig, then restart
msconfig
pause
goto MainMenu

:Tool106
echo Running Tool 106: Windows Command Prompt Check...
echo Opens Command Prompt
start cmd
pause
goto MainMenu

:Tool107
echo Running Tool 107: Open Windows Command Prompt...
start cmd
pause
goto MainMenu

:Tool108
echo Running Tool 108: Windows PowerShell Check...
echo Opens PowerShell
start powershell
pause
goto MainMenu

:Tool109
echo Running Tool 109: Open Windows PowerShell...
start powershell
pause
goto MainMenu

:Tool110
echo Running Tool 110: Windows Terminal Check...
echo Opens Windows Terminal
start wt
pause
goto MainMenu

:Tool111
echo Running Tool 111: Open Windows Terminal...
start wt
pause
goto MainMenu

:Tool112
echo Running Tool 112: Windows Task Manager Check...
echo Opens Task Manager
start taskmgr
pause
goto MainMenu

:Tool113
echo Running Tool 113: Open Windows Task Manager...
start taskmgr
pause
goto MainMenu

:Tool114
echo Running Tool 114: Windows Settings Check...
echo Opens Windows Settings
start ms-settings:
pause
goto MainMenu

:Tool115
echo Running Tool 115: Open Windows Settings...
start ms-settings:
pause
goto MainMenu

:Tool116
echo Running Tool 116: Windows Control Panel Check...
echo Opens Control Panel
start control
pause
goto MainMenu

:Tool117
echo Running Tool 117: Open Windows Control Panel...
start control
pause
goto MainMenu

:Tool118
echo Running Tool 118: Windows File Explorer Check...
echo Opens File Explorer
start explorer
pause
goto MainMenu

:Tool119
echo Running Tool 119: Open Windows File Explorer...
start explorer
pause
goto MainMenu

:Tool120
echo Running Tool 120: Windows Run Dialog Check...
echo Opens Run Dialog
start runas /user:administrator cmd
pause
goto MainMenu

:Tool121
echo Running Tool 121: Open Windows Run Dialog...
start runas /user:administrator cmd
pause
goto MainMenu

:Tool122
echo Running Tool 122: Windows Search Check...
echo Opens Windows Search
start ms-search:
pause
goto MainMenu

:Tool123
echo Running Tool 123: Open Windows Search...
start ms-search:
pause
goto MainMenu

:Tool124
echo Running Tool 124: Windows Snipping Tool Check...
echo Opens Snipping Tool
start snippingtool
pause
goto MainMenu

:Tool125
echo Running Tool 125: Open Windows Snipping Tool...
start snippingtool
pause
goto MainMenu

:Tool126
echo Running Tool 126: Windows Calculator Check...
echo Opens Calculator
start calc
pause
goto MainMenu

:Tool127
echo Running Tool 127: Open Windows Calculator...
start calc
pause
goto MainMenu

:Tool128
echo Running Tool 128: Windows Notepad Check...
echo Opens Notepad
start notepad
pause
goto MainMenu

:Tool129
echo Running Tool 129: Open Windows Notepad...
start notepad
pause
goto MainMenu

:Tool130
echo Running Tool 130: Windows Paint Check...
echo Opens Paint
start mspaint
pause
goto MainMenu

:Tool131
echo Running Tool 131: Open Windows Paint...
start mspaint
pause
goto MainMenu

:Tool132
echo Running Tool 132: Windows WordPad Check...
echo Opens WordPad
start wordpad
pause
goto MainMenu

:Tool133
echo Running Tool 133: Open Windows WordPad...
start wordpad
pause
goto MainMenu

:Tool134
echo Running Tool 134: Windows Media Player Check...
echo Opens Windows Media Player
start wmplayer
pause
goto MainMenu

:Tool135
echo Running Tool 135: Open Windows Media Player...
start wmplayer
pause
goto MainMenu

:Tool136
echo Running Tool 136: Windows Photos Check...
echo Opens Windows Photos
start ms-photos:
pause
goto MainMenu

:Tool137
echo Running Tool 137: Open Windows Photos...
start ms-photos:
pause
goto MainMenu

:Tool138
echo Running Tool 138: Windows Music Check...
echo Opens Windows Music
start ms-music:
pause
goto MainMenu

:Tool139
echo Running Tool 139: Open Windows Music...
start ms-music:
pause
goto MainMenu

:Tool140
echo Running Tool 140: Windows Movies & TV Check...
echo Opens Windows Movies & TV
start ms-video:
pause
goto MainMenu

:Tool141
echo Running Tool 141: Open Windows Movies & TV...
start ms-video:
pause
goto MainMenu

:Tool142
echo Running Tool 142: Windows Store Check...
echo Opens Windows Store
start ms-windows-store:
pause
goto MainMenu

:Tool143
echo Running Tool 143: Open Windows Store...
start ms-windows-store:
pause
goto MainMenu

:Tool144
echo Running Tool 144: Check System Uptime...
net statistics workstation
pause
goto MainMenu

:Tool145
echo Running Tool 145: Check Last Boot Time...
systeminfo | find "Boot Time"
pause
goto MainMenu

:Tool146
echo Running Tool 146: Check System Model...
wmic computersystem get model
pause
goto MainMenu

:Tool147
echo Running Tool 147: Check System Manufacturer...
wmic computersystem get manufacturer
pause
goto MainMenu

:Tool148
echo Running Tool 148: Check OS Version...
ver
pause
goto MainMenu

:Tool149
echo Running Tool 149: Check OS Build Number...
systeminfo | find "OS Build"
pause
goto MainMenu

:Tool150
echo Running Tool 150: Check System Language...
systeminfo | find "System Locale"
pause
goto MainMenu

:Tool151
echo Running Tool 151: Check System Serial Number...
wmic bios get serialnumber
pause
goto MainMenu

:Tool152
echo Running Tool 152: Check BIOS Version...
wmic bios get version
pause
goto MainMenu

:Tool153
echo Running Tool 153: Check BIOS Manufacturer...
wmic bios get manufacturer
pause
goto MainMenu

:Tool154
echo Running Tool 154: Check CPU Name...
wmic cpu get name
pause
goto MainMenu

:Tool155
echo Running Tool 155: Check CPU Speed...
wmic cpu get CurrentClockSpeed
pause
goto MainMenu

:Tool156
echo Running Tool 156: Check CPU Cores...
wmic cpu get NumberOfCores
pause
goto MainMenu

:Tool157
echo Running Tool 157: Check CPU Threads...
wmic cpu get NumberOfLogicalProcessors
pause
goto MainMenu

:Tool158
echo Running Tool 158: Check Total Physical Memory...
wmic computersystem get TotalPhysicalMemory
pause
goto MainMenu

:Tool159
echo Running Tool 159: Check Available Physical Memory...
wmic os get FreePhysicalMemory
pause
goto MainMenu

:Tool160
echo Running Tool 160: Check Disk Drives...
wmic diskdrive get Caption,Size,InterfaceType
pause
goto MainMenu

:Tool161
echo Running Tool 161: Check Disk Partitions...
wmic partition get DriveLetter,Size,Type
pause
goto MainMenu

:Tool162
echo Running Tool 162: Check Logical Disks...
wmic logicaldisk get Caption,DriveType,FileSystem,FreeSpace,Size
pause
goto MainMenu

:Tool163
echo Running Tool 163: Check Network Adapters...
wmic nic get NetConnectionID,Name,NetEnabled,Speed
pause
goto MainMenu

:Tool164
echo Running Tool 164: Check IP Addresses...
ipconfig
pause
goto MainMenu

:Tool165
echo Running Tool 165: Check MAC Addresses...
getmac /v /fo list
pause
goto MainMenu

:Tool166
echo Running Tool 166: Check Default Gateway...
ipconfig | findstr "Default Gateway"
pause
goto MainMenu

:Tool167
echo Running Tool 167: Check DNS Servers...
ipconfig /all | findstr "DNS Servers"
pause
goto MainMenu

:Tool168
echo Running Tool 168: Check DHCP Server...
ipconfig /all | findstr "DHCP Server"
pause
goto MainMenu

:Tool169
echo Running Tool 169: Check Winsock Configuration...
netsh winsock show catalog
pause
goto MainMenu

:Tool170
echo Running Tool 170: Check Proxy Settings...
netsh winhttp show proxy
pause
goto MainMenu

:Tool171
echo Running Tool 171: Check Firewall Configuration...
netsh advfirewall show currentprofile
pause
goto MainMenu

:Tool172
echo Running Tool 172: Check Antivirus Software...
wmic AntivirusProduct get displayName,productState
pause
goto MainMenu

:Tool173
echo Running Tool 173: Check User Account Control Settings...
UserAccountControlSettings.exe
pause
goto MainMenu

:Tool174
echo Running Tool 174: Check Power Configuration...
powercfg /list
pause
goto MainMenu

:Tool175
echo Running Tool 175: Check Sleep Study Report...
powercfg /sleepstudy
pause
goto MainMenu

:Tool176
echo Running Tool 176: Check Battery Report...
powercfg /batteryreport
pause
goto MainMenu

:Tool177
echo Running Tool 177: Check System Power Efficiency Diagnostics Report...
powercfg /energy
pause
goto MainMenu

:Tool178
echo Running Tool 178: Check Driver Verifier Status...
verifier /query
pause
goto MainMenu

:Tool179
echo Running Tool 179: Open Driver Verifier Manager...
verifier
pause
goto MainMenu

:Tool180
echo Running Tool 180: Check Boot Configuration Data...
bcdedit
pause
goto MainMenu

:Tool181
echo Running Tool 181: Check Boot Log...
%SystemRoot%\ntbtlog.txt
pause
goto MainMenu

:Tool182
echo Running Tool 182: Check for Memory Dump Files...
dir %SystemRoot%\MEMORY.DMP /a
pause
goto MainMenu

:Tool183
echo Running Tool 183: Check for Minidump Files...
dir %SystemRoot%\Minidump /a
pause
goto MainMenu

:Tool184
echo Running Tool 184: Check Page File Configuration...
wmic pagefile get name,FileSize,MaximumSize,InitialSize
pause
goto MainMenu

:Tool185
echo Running Tool 185: Check Environment Variables...
set
pause
goto MainMenu

:Tool186
echo Running Tool 186: Check System Date and Time...
time /t & date /t
pause
goto MainMenu

:Tool187
echo Running Tool 187: Check System Time Zone...
tzutil /g
pause
goto MainMenu

:Tool188
echo Running Tool 188: Check System Hotfixes...
wmic qfe list brief /format:textvaluelist.xsl
pause
goto MainMenu

:Tool189
echo Running Tool 189: Check Installed Codecs...
start codecguide.com
pause
goto MainMenu

:Tool190
echo Running Tool 190: Check DirectX Version...
dxdiag
pause
goto MainMenu

:Tool191
echo Running Tool 191: Check OpenGL Version...
start opengl32.dll
pause
goto MainMenu

:Tool192
echo Running Tool 192: Check .NET Framework Versions...
reg query "HKLM\SOFTWARE\Microsoft\NET Framework Setup\NDP"
pause
goto MainMenu

:Tool193
echo Running Tool 193: Check Java Version...
java -version
pause
goto MainMenu

:Tool194
echo Running Tool 194: Check Python Version...
python --version
pause
goto MainMenu

:Tool195
echo Running Tool 195: Check Node.js Version...
node -v
pause
goto MainMenu

:Tool196
echo Running Tool 196: Check PowerShell Version...
powershell -hostprofile CurrentUser,AllUsers -command "$PSVersionTable"
pause
goto MainMenu

:Tool197
echo Running Tool 197: Check Disk Performance...
diskspd -c1 -d10 -W0 -b4K -r -o4 -t1 -h -L -Zc:\testfile.dat
pause
goto MainMenu

:Tool198
echo Running Tool 198: Check Network Performance...
start speedtest-cli
pause
goto MainMenu

:Tool199
echo Running Tool 199: Check System Temperature...
start sensors
pause
goto MainMenu

:Tool200
echo Running Tool 200: Check Fan Speed...
wmic fan get name,CurrentSpeed
pause
goto MainMenu

:Tool201
echo Running Tool 201: Show Available Networks...
netsh wlan show networks
pause
goto WiFiMenu

:Tool202
echo Running Tool 202: Connect to Network...
set /p "ssid=Enter Network Name (SSID): "
netsh wlan connect name="%ssid%"
pause
goto WiFiMenu

:Tool203
echo Running Tool 203: Forget Network...
set /p "ssid=Enter Network Name to Forget (SSID): "
netsh wlan delete profile name="%ssid%"
pause
goto WiFiMenu

:Tool204
echo Running Tool 204: Show Saved Networks...
netsh wlan show profiles
pause
goto WiFiMenu

:Tool205
echo Running Tool 205: Show Network Status...
netsh wlan show interfaces
pause
goto WiFiMenu

:Tool206
echo Running Tool 206: Generate WiFi Report...
netsh wlan show wlanreport
start explorer %ProgramData%\Microsoft\Windows\WlanReport\wlan-report-latest.html
pause
goto WiFiMenu

:Tool207
echo Running Tool 207: Show WiFi Password...
set /p "ssid=Enter Network Name (SSID): "
netsh wlan show profile name="%ssid%" key=clear
pause
goto WiFiMenu

:Tool208
echo Running Tool 208: Enable WiFi...
netsh interface set interface "Wi-Fi" enabled
pause
goto WiFiMenu

:Tool209
echo Running Tool 209: Disable WiFi...
netsh interface set interface "Wi-Fi" disabled
pause
goto WiFiMenu

:Tool210
echo Running Tool 210: List Installed Apps...
powershell "Get-AppxPackage | Format-Table Name, PackageFullName"
pause
goto AppManagementMenu

:Tool211
echo Running Tool 211: Remove App...
set /p "appname=Enter App Name to Remove: "
powershell "Get-AppxPackage *%appname%* | Remove-AppxPackage"
pause
goto AppManagementMenu

:Tool212
echo Running Tool 212: Repair App...
set /p "appname=Enter App Name to Repair: "
powershell "Get-AppxPackage *%appname%* | Add-AppxPackage -Register -DisableDevelopmentMode"
pause
goto AppManagementMenu

:Tool213
echo Running Tool 213: Reset App...
set /p "appname=Enter App Name to Reset: "
powershell "Get-AppxPackage *%appname%* | Reset-AppxPackage"
pause
goto AppManagementMenu

:Tool214
echo Running Tool 214: Start App...
set /p "appname=Enter App Name to Start: "
powershell "Start-Process -Name %appname%"
pause
goto AppManagementMenu

:Tool215
echo Running Tool 215: Stop App...
set /p "appname=Enter App Name to Stop: "
powershell "Stop-Process -Name %appname%"
pause
goto AppManagementMenu

:Tool216
echo Running Tool 216: Check App Status...
set /p "appname=Enter App Name to Check Status: "
powershell "Get-Process -Name %appname%"
pause
goto AppManagementMenu

:Tool217
echo Running Tool 217: Check App Dependencies...
set /p "appname=Enter App Name to Check Dependencies: "
powershell "Get-AppxPackage *%appname%* | Select-Object -ExpandProperty Dependencies"
pause
goto AppManagementMenu

:Tool220
echo Running Tool 220: Check Privacy Settings...
start ms-settings:privacy
pause
goto PrivacyMenu

:Tool221
echo Running Tool 221: Manage App Permissions...
start ms-settings:privacy-general
pause
goto PrivacyMenu

:Tool222
echo Running Tool 222: Location Settings...
start ms-settings:privacy-location
pause
goto PrivacyMenu

:Tool223
echo Running Tool 223: Camera Settings...
start ms-settings:privacy-webcam
pause
goto PrivacyMenu

:Tool224
echo Running Tool 224: Microphone Settings...
start ms-settings:privacy-microphone
pause
goto PrivacyMenu

:Tool225
echo Running Tool 225: Notifications Settings...
start ms-settings:privacy-notifications
pause
goto PrivacyMenu

:Tool226
echo Running Tool 226: Background Apps...
start ms-settings:privacy-backgroundapps
pause
goto PrivacyMenu

:Tool227
echo Running Tool 227: Diagnostic Data...
start ms-settings:privacy-feedback
pause
goto PrivacyMenu

:Tool230
echo Running Tool 230: Check Windows Hello Status...
powershell "Get-ItemProperty -Path 'HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Authentication\LogonUI\NgcPin'"
pause
goto ModernWindowsMenu

:Tool231
echo Running Tool 231: Manage Virtual Desktops...
explorer shell:::{3080F90E-D7AD-11D9-BD98-0000947B0257}
pause
goto ModernWindowsMenu

:Tool232
echo Running Tool 232: Manage Snap Layouts...
start ms-settings:multitasking
pause
goto ModernWindowsMenu

:Tool233
echo Running Tool 233: Check Widget Status...
start ms-settings:personalization-taskbar
pause
goto ModernWindowsMenu

:Tool234
echo Running Tool 234: Android Apps Support...
start ms-settings:appsfeatures
pause
goto ModernWindowsMenu

:Tool235
echo Running Tool 235: DirectStorage Status...
powershell "Get-ItemProperty -Path 'HKLM:\SOFTWARE\Microsoft\DirectStorage'"
pause
goto ModernWindowsMenu

:Tool236
echo Running Tool 236: Auto HDR Status...
start ms-settings:gaming-gamedvr
pause
goto ModernWindowsMenu

:Tool240
echo Running Tool 240: Check SMART Status...
wmic diskdrive get status
pause
goto DiskHealthMenu

:Tool241
echo Running Tool 241: View Disk Health Report...
powershell "Get-PhysicalDisk | Get-StorageReliabilityCounter | Format-List"
pause
goto DiskHealthMenu

:Tool242
echo Running Tool 242: Check Bad Sectors...
echo Please enter drive letter (e.g., C):
set /p "drive=Drive Letter: "
chkdsk %drive%: /f /r
pause
goto DiskHealthMenu

:Tool243
echo Running Tool 243: Disk Performance Stats...
winsat disk -drive c
pause
goto DiskHealthMenu

:Tool244
echo Running Tool 244: Disk Temperature...
powershell "Get-WmiObject -Namespace root\wmi -Class MSStorageDriver_ATAPISmartData | Select-Object InstanceName, Temperature"
pause
goto DiskHealthMenu

:Tool245
echo Running Tool 245: SSD Life Status...
powershell "Get-PhysicalDisk | Get-StorageReliabilityCounter | Select-Object DeviceId, Wear"
pause
goto DiskHealthMenu

:Tool246
echo Running Tool 246: Disk Error History...
powershell "Get-EventLog -LogName System -Source Disk"
pause
goto DiskHealthMenu

:Tool250
echo Running Tool 250: Security Health Check...
powershell "Get-MpComputerStatus"
pause
goto SecurityCenterMenu

:Tool251
echo Running Tool 251: Ransomware Protection Status...
powershell "Get-MpPreference | Select-Object EnableControlledFolderAccess"
pause
goto SecurityCenterMenu

:Tool252
echo Running Tool 252: Core Isolation Status...
reg query "HKLM\SYSTEM\CurrentControlSet\Control\DeviceGuard\Scenarios\HypervisorEnforcedCodeIntegrity" /v "Enabled"
pause
goto SecurityCenterMenu

:Tool253
echo Running Tool 253: App & Browser Control...
start ms-settings:windowsdefender
pause
goto SecurityCenterMenu

:Tool254
echo Running Tool 254: Exploit Protection Settings...
powershell "Get-ProcessMitigation -System"
pause
goto SecurityCenterMenu

:Tool255
echo Running Tool 255: Network Protection Status...
powershell "Get-MpPreference | Select-Object EnableNetworkProtection"
pause
goto SecurityCenterMenu

:Tool256
echo Running Tool 256: Controlled Folder Access...
powershell "Get-MpPreference | Select-Object EnableControlledFolderAccess"
pause
goto SecurityCenterMenu

:InvalidChoice
echo Invalid choice. Please try again.
pause
goto :%LastMenu%

:Exit
cls
echo Exiting Combined Tools.
exit
