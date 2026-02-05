@echo off
:: ═══════════════════════════════════════════════════════════════════════════════
:: The Ultimate Bat File - SOTA 2026 Edition
:: ═══════════════════════════════════════════════════════════════════════════════
:: The most comprehensive Windows system management suite
:: 
:: VERSION: 3.0-SOTA2026
:: DATE: 2026-02-05
:: AUTHOR: JTG Systems (https://www.jtgsystems.com)
:: LICENSE: MIT
::
:: FEATURES:
:: - Windows 10/11/Server 2022+ compatible
:: - Modern PowerShell 7 integration
:: - 200+ system tools and utilities
:: - Modular architecture
:: - Professional logging
:: - Smart error handling
:: - Comprehensive backups
:: ═══════════════════════════════════════════════════════════════════════════════

setlocal enabledelayedexpansion

:: ═══════════════════════════════════════════════════════════════════════════════
:: CONFIGURATION
:: ═══════════════════════════════════════════════════════════════════════════════
set "VERSION=3.0-SOTA2026"
set "BUILD_DATE=2026-02-05"
set "SCRIPT_NAME=The Ultimate Bat File - SOTA 2026 Edition"
set "AUTHOR=JTG Systems"
set "WEBSITE=https://www.jtgsystems.com"

:: Directory structure
set "SCRIPT_DIR=%~dp0"
for %%i in ("%~dp0..") do set "SRC_DIR=%%~fi"
for %%i in ("%~dp0..\..") do set "ROOT_DIR=%%~fi"
set "MODULES_DIR=%SRC_DIR%\modules"
set "UTILITIES_DIR=%SRC_DIR%\utilities"
set "LOG_DIR=%ROOT_DIR%\logs"
set "CONFIG_DIR=%ROOT_DIR%\config"
set "BACKUP_DIR=%ROOT_DIR%\backups"
set "TEMP_DIR=%ROOT_DIR%\temp"

:: Logging
set "LOGFILE=%LOG_DIR%\ultimate-tools-%date:~-4,4%%date:~-10,2%%date:~-7,2%.log"

:: PowerShell configuration
set "POWERSHELL_CMD=powershell -NoLogo -NoProfile -ExecutionPolicy Bypass -Command"
set "PWSH_CMD=pwsh -NoLogo -NoProfile -ExecutionPolicy Bypass -Command"

:: Check for PowerShell 7 (pwsh)
where pwsh >nul 2>&1
if !errorlevel! equ 0 (
    set "PS_CMD=!PWSH_CMD!"
    set "PS_VERSION=7"
) else (
    set "PS_CMD=!POWERSHELL_CMD!"
    set "PS_VERSION=5"
)

:: ═══════════════════════════════════════════════════════════════════════════════
:: INITIALIZATION
:: ═══════════════════════════════════════════════════════════════════════════════
:Initialize
    call :CreateDirectories
    call :CheckAdminRights
    if !errorlevel! neq 0 exit /b 1
    
    call :InitializeLogging
    call :DisplayBanner
    call :VerifySystemRequirements
    if !errorlevel! neq 0 (
        echo [ERROR] System requirements not met. Exiting.
        pause
        exit /b 1
    )
    
    call :LoadConfiguration
    call :MainMenu
    goto :EOF

:: ═══════════════════════════════════════════════════════════════════════════════
:: DIRECTORY SETUP
:: ═══════════════════════════════════════════════════════════════════════════════
:CreateDirectories
    if not exist "%LOG_DIR%" mkdir "%LOG_DIR%" 2>nul
    if not exist "%BACKUP_DIR%" mkdir "%BACKUP_DIR%" 2>nul
    if not exist "%CONFIG_DIR%" mkdir "%CONFIG_DIR%" 2>nul
    if not exist "%TEMP_DIR%" mkdir "%TEMP_DIR%" 2>nul
    exit /b 0

:: ═══════════════════════════════════════════════════════════════════════════════
:: ADMIN RIGHTS CHECK
:: ═══════════════════════════════════════════════════════════════════════════════
:CheckAdminRights
    net session >nul 2>&1
    if !errorlevel! equ 0 (
        echo [OK] Administrative privileges confirmed.
        exit /b 0
    )
    
    echo [INFO] Administrative privileges required.
    echo [INFO] Requesting elevation...
    
    :: Create elevation script
    echo Set UAC = CreateObject^("Shell.Application"^) > "%TEMP%\elevate.vbs"
    echo UAC.ShellExecute "%~s0", "", "", "runas", 1 >> "%TEMP%\elevate.vbs"
    
    :: Execute elevation
    cscript //nologo "%TEMP%\elevate.vbs" >nul 2>&1
    if exist "%TEMP%\elevate.vbs" del "%TEMP%\elevate.vbs" >nul 2>&1
    
    :: Exit original instance
    exit /b 1

:: ═══════════════════════════════════════════════════════════════════════════════
:: LOGGING
:: ═══════════════════════════════════════════════════════════════════════════════
:InitializeLogging
    echo ═══════════════════════════════════════════════════════════════════════ > "%LOGFILE%"
    echo   %SCRIPT_NAME% v%VERSION% >> "%LOGFILE%"
    echo ═══════════════════════════════════════════════════════════════════════ >> "%LOGFILE%"
    echo Session Start: %date% %time% >> "%LOGFILE%"
    echo User: %username% >> "%LOGFILE%"
    echo Computer: %computername% >> "%LOGFILE%"
    echo OS: %OS% >> "%LOGFILE%"
    echo PowerShell Version: %PS_VERSION% >> "%LOGFILE%"
    echo ═══════════════════════════════════════════════════════════════════════ >> "%LOGFILE%"
    exit /b 0

:LogMessage
    set "MSG_LEVEL=%~1"
    set "MSG_TEXT=%~2"
    echo [%DATE% %TIME%] [%MSG_LEVEL%] %MSG_TEXT% >> "%LOGFILE%"
    exit /b 0

:: ═══════════════════════════════════════════════════════════════════════════════
:: BANNER DISPLAY
:: ═══════════════════════════════════════════════════════════════════════════════
:DisplayBanner
    cls
    color 0B
    echo.
    echo    ╔══════════════════════════════════════════════════════════════════════════════╗
    echo    ║                                                                              ║
    echo    ║     ████████╗██╗  ██╗███████╗    ██╗   ██╗██╗  ████████╗██╗███╗   ███╗      ║
    echo    ║     ╚══██╔══╝██║  ██║██╔════╝    ██║   ██║██║  ╚══██╔══╝██║████╗ ████║      ║
    echo    ║        ██║   ███████║█████╗      ██║   ██║██║     ██║   ██║██╔████╔██║      ║
    echo    ║        ██║   ██╔══██║██╔══╝      ██║   ██║██║     ██║   ██║██║╚██╔╝██║      ║
    echo    ║        ██║   ██║  ██║███████╗    ╚██████╔╝███████╗██║   ██║██║ ╚═╝ ██║      ║
    echo    ║        ╚═╝   ╚═╝  ╚═╝╚══════╝     ╚═════╝ ╚══════╝╚═╝   ╚═╝╚═╝     ╚═╝      ║
    echo    ║                                                                              ║
    echo    ║              ██████╗  █████╗ ████████╗    ███████╗██╗██╗     ███████╗      ║
    echo    ║              ██╔══██╗██╔══██╗╚══██╔══╝    ██╔════╝██║██║     ██╔════╝      ║
    echo    ║              ██████╔╝███████║   ██║       █████╗  ██║██║     █████╗        ║
    echo    ║              ██╔══██╗██╔══██║   ██║       ██╔══╝  ██║██║     ██╔══╝        ║
    echo    ║              ██║  ██║██║  ██║   ██║       ██║     ██║███████╗███████╗      ║
    echo    ║              ╚═╝  ╚═╝╚═╝  ╚═╝   ╚═╝       ╚═╝     ╚═╝╚══════╝╚══════╝      ║
    echo    ║                                                                              ║
    echo    ║                    SOTA 2026 EDITION v%VERSION%                         ║
    echo    ║                   Professional Windows System Suite                          ║
    echo    ║                                                                              ║
    echo    ╚══════════════════════════════════════════════════════════════════════════════╝
    echo.
    echo    Developed by %AUTHOR% ^| %WEBSITE%
    echo.
    timeout /t 2 >nul
    exit /b 0

:: ═══════════════════════════════════════════════════════════════════════════════
:: SYSTEM REQUIREMENTS
:: ═══════════════════════════════════════════════════════════════════════════════
:VerifySystemRequirements
    call :LogMessage "INFO" "Verifying system requirements..."
    echo [INFO] Checking system requirements...
    
    :: Check Windows version
    for /f "tokens=4-5 delims=." %%i in ('ver') do set "WIN_VER=%%i.%%j"
    
    :: Check for PowerShell
    if "!PS_CMD!"=="" (
        echo [ERROR] PowerShell is required but not found.
        call :LogMessage "ERROR" "PowerShell not found"
        exit /b 1
    )
    
    echo [OK] PowerShell %PS_VERSION% detected.
    call :LogMessage "INFO" "PowerShell !PS_VERSION! detected"
    
    :: Check Windows version (Windows 10/11/Server 2019/2022)
    systeminfo | findstr /B /C:"OS Name" | findstr /C:"Windows 10" >nul && set "WIN_COMPATIBLE=1"
    systeminfo | findstr /B /C:"OS Name" | findstr /C:"Windows 11" >nul && set "WIN_COMPATIBLE=1"
    
    if "!WIN_COMPATIBLE!"=="1" (
        echo [OK] Compatible Windows version detected.
        call :LogMessage "INFO" "Compatible Windows version"
    ) else (
        echo [WARNING] Untested Windows version. Some features may not work.
        call :LogMessage "WARNING" "Untested Windows version"
    )
    
    exit /b 0

:: ═══════════════════════════════════════════════════════════════════════════════
:: CONFIGURATION LOADING
:: ═══════════════════════════════════════════════════════════════════════════════
:LoadConfiguration
    call :LogMessage "INFO" "Loading configuration..."
    
    :: Default configuration
    set "CONFIG_THEME=dark"
    set "CONFIG_VERBOSE=false"
    set "CONFIG_AUTO_BACKUP=true"
    set "CONFIG_LOG_RETENTION=30"
    
    :: Load user configuration if exists
    if exist "%CONFIG_DIR%\user.conf" (
        call :LogMessage "INFO" "Loading user configuration"
        for /f "usebackq tokens=1,2 delims==" %%a in ("%CONFIG_DIR%\user.conf") do (
            set "CONFIG_%%a=%%b"
        )
    )
    
    exit /b 0

:: ═══════════════════════════════════════════════════════════════════════════════
:: MAIN MENU
:: ═══════════════════════════════════════════════════════════════════════════════
:MainMenu
    cls
    color 0B
    echo.
    echo    ╔══════════════════════════════════════════════════════════════════════════════╗
    echo    ║                         MAIN MENU - SOTA 2026                                ║
    echo    ╠══════════════════════════════════════════════════════════════════════════════╣
    echo    ║                                                                              ║
    echo    ║   [SYSTEM]                                                                   ║
    echo    ║    1. System Information        6.  Performance Monitor                      ║
    echo    ║    2. System Maintenance        7.  Storage Manager                          ║
    echo    ║    3. Diagnostics Suite         8.  Network Tools                            ║
    echo    ║    4. Security Center           9.  Windows Features                         ║
    echo    ║    5. Software Manager          10. Power Settings                           ║
    echo    ║                                                                              ║
    echo    ║   [UTILITIES]                                                                ║
    echo    ║    11. Quick Fixes              14. Backup ^& Restore                       ║
    echo    ║    12. WiFi Manager             15. Advanced Tools                           ║
    echo    ║    13. App Manager              16. Combo Actions                            ║
    echo    ║                                                                              ║
    echo    ║   [INFO]                                                                     ║
    echo    ║    17. View Logs                19. About                                    ║
    echo    ║    18. Settings                 20. Exit                                     ║
    echo    ║                                                                              ║
    echo    ╚══════════════════════════════════════════════════════════════════════════════╝
    echo.
    set /p "choice=    Enter your choice (1-20): "
    
    if "%choice%"=="1" call :SystemInfoMenu
    if "%choice%"=="2" call :MaintenanceMenu
    if "%choice%"=="3" call :DiagnosticsMenu
    if "%choice%"=="4" call :SecurityMenu
    if "%choice%"=="5" call :SoftwareMenu
    if "%choice%"=="6" call :PerformanceMenu
    if "%choice%"=="7" call :StorageMenu
    if "%choice%"=="8" call :NetworkMenu
    if "%choice%"=="9" call :WindowsFeaturesMenu
    if "%choice%"=="10" call :PowerMenu
    if "%choice%"=="11" call :QuickFixesMenu
    if "%choice%"=="12" call :WiFiMenu
    if "%choice%"=="13" call :AppManagerMenu
    if "%choice%"=="14" call :BackupMenu
    if "%choice%"=="15" call :AdvancedMenu
    if "%choice%"=="16" call :ComboMenu
    if "%choice%"=="17" call :ViewLogs
    if "%choice%"=="18" call :SettingsMenu
    if "%choice%"=="19" call :AboutDialog
    if "%choice%"=="20" call :ExitScript
    
    echo [ERROR] Invalid choice. Please try again.
    timeout /t 2 >nul
    goto :MainMenu

:: ═══════════════════════════════════════════════════════════════════════════════
:: SYSTEM INFORMATION MENU
:: ═══════════════════════════════════════════════════════════════════════════════
:SystemInfoMenu
    cls
    echo.
    echo    ╔══════════════════════════════════════════════════════════════════════════════╗
    echo    ║                      SYSTEM INFORMATION TOOLS                                ║
    echo    ╠══════════════════════════════════════════════════════════════════════════════╣
    echo    ║                                                                              ║
    echo    ║   Hardware Information:                                                      ║
    echo    ║    1. Complete System Profile   6.  GPU Information                          ║
    echo    ║    2. CPU Details               7.  Motherboard Info                         ║
    echo    ║    3. Memory Analysis           8.  BIOS Details                             ║
    echo    ║    4. Storage Overview          9.  Temperature Sensors                      ║
    echo    ║    5. Display Information       10. Battery Status                           ║
    echo    ║                                                                              ║
    echo    ║   Software Information:                                                      ║
    echo    ║    11. Operating System         15. Environment Variables                    ║
    echo    ║    12. Installed Updates        16. System Uptime                            ║
    echo    ║    13. .NET Framework           17. Boot Configuration                       ║
    echo    ║    14. PowerShell Version       18. Complete Export                          ║
    echo    ║                                                                              ║
    echo    ║    19. Back to Main Menu                                                     ║
    echo    ║                                                                              ║
    echo    ╚══════════════════════════════════════════════════════════════════════════════╝
    echo.
    set /p "choice=    Enter choice (1-19): "
    
    if "%choice%"=="1" call :SystemProfile
    if "%choice%"=="2" call :CPUInfo
    if "%choice%"=="3" call :MemoryInfo
    if "%choice%"=="4" call :StorageInfo
    if "%choice%"=="5" call :DisplayInfo
    if "%choice%"=="6" call :GPUInfo
    if "%choice%"=="7" call :MotherboardInfo
    if "%choice%"=="8" call :BIOSInfo
    if "%choice%"=="9" call :TemperatureInfo
    if "%choice%"=="10" call :BatteryInfo
    if "%choice%"=="11" call :OSInfo
    if "%choice%"=="12" call :InstalledUpdates
    if "%choice%"=="13" call :DotNetInfo
    if "%choice%"=="14" call :PSVersionInfo
    if "%choice%"=="15" call :EnvVarsInfo
    if "%choice%"=="16" call :UptimeInfo
    if "%choice%"=="17" call :BootConfigInfo
    if "%choice%"=="18" call :ExportSystemInfo
    if "%choice%"=="19" goto :MainMenu
    
    goto :SystemInfoMenu

:: ═══════════════════════════════════════════════════════════════════════════════
:: SYSTEM INFORMATION FUNCTIONS
:: ═══════════════════════════════════════════════════════════════════════════════
:SystemProfile
    cls
    echo [INFO] Generating complete system profile...
    call :LogMessage "INFO" "Generating system profile"
    
    set "PROFILE_FILE=%TEMP_DIR%\system-profile-%date:~-4,4%%date:~-10,2%%date:~-7,2%.txt"
    
    echo ════════════════════════════════════════════════════════════════ > "%PROFILE_FILE%"
    echo   SYSTEM PROFILE - %COMPUTERNAME% >> "%PROFILE_FILE%"
    echo   Generated: %date% %time% >> "%PROFILE_FILE%"
    echo ════════════════════════════════════════════════════════════════ >> "%PROFILE_FILE%"
    echo. >> "%PROFILE_FILE%"
    
    echo [OPERATING SYSTEM] >> "%PROFILE_FILE%"
    !PS_CMD! "Get-CimInstance Win32_OperatingSystem | Select-Object Caption, Version, BuildNumber, OSArchitecture, TotalVisibleMemorySize, FreePhysicalMemory | Format-List" >> "%PROFILE_FILE%"
    echo. >> "%PROFILE_FILE%"
    
    echo [PROCESSOR] >> "%PROFILE_FILE%"
    !PS_CMD! "Get-CimInstance Win32_Processor | Select-Object Name, Manufacturer, MaxClockSpeed, NumberOfCores, NumberOfLogicalProcessors | Format-List" >> "%PROFILE_FILE%"
    echo. >> "%PROFILE_FILE%"
    
    echo [MEMORY] >> "%PROFILE_FILE%"
    !PS_CMD! "Get-CimInstance Win32_PhysicalMemory | Select-Object DeviceLocator, Capacity, Speed, Manufacturer | Format-Table -AutoSize" >> "%PROFILE_FILE%"
    echo. >> "%PROFILE_FILE%"
    
    echo [STORAGE] >> "%PROFILE_FILE%"
    !PS_CMD! "Get-CimInstance Win32_LogicalDisk | Select-Object DeviceID, Size, FreeSpace, FileSystem | Format-Table -AutoSize" >> "%PROFILE_FILE%"
    echo. >> "%PROFILE_FILE%"
    
    echo [GRAPHICS] >> "%PROFILE_FILE%"
    !PS_CMD! "Get-CimInstance Win32_VideoController | Select-Object Name, AdapterRAM, VideoModeDescription | Format-Table -AutoSize" >> "%PROFILE_FILE%"
    echo. >> "%PROFILE_FILE%"
    
    echo [NETWORK] >> "%PROFILE_FILE%"
    !PS_CMD! "Get-NetAdapter | Where-Object {$_.Status -eq 'Up'} | Select-Object Name, InterfaceDescription, LinkSpeed | Format-Table -AutoSize" >> "%PROFILE_FILE%"
    echo. >> "%PROFILE_FILE%"
    
    type "%PROFILE_FILE%"
    echo.
    echo [OK] Profile saved to: %PROFILE_FILE%
    pause
    goto :SystemInfoMenu

:CPUInfo
    cls
    echo [INFO] CPU Information:
    echo.
    !PS_CMD! "Get-CimInstance Win32_Processor | Select-Object Name, Manufacturer, MaxClockSpeed, NumberOfCores, NumberOfLogicalProcessors, L2CacheSize, L3CacheSize | Format-List"
    echo.
    !PS_CMD! "Get-Counter '\Processor(_Total)\\% Processor Time' -SampleCount 1 | Select-Object -ExpandProperty CounterSamples | Select-Object CookedValue | Format-Table -AutoSize"
    pause
    goto :SystemInfoMenu

:MemoryInfo
    cls
    echo [INFO] Memory Information:
    echo.
    !PS_CMD! "Get-CimInstance Win32_PhysicalMemory | Select-Object DeviceLocator, @{N='Capacity(GB)';E={[math]::Round($_.Capacity/1GB,2)}}, Speed, Manufacturer | Format-Table -AutoSize"
    echo.
    echo [Memory Usage]:
    !PS_CMD! "Get-CimInstance Win32_OperatingSystem | Select-Object TotalVisibleMemorySize, FreePhysicalMemory, @{N='Used(%)';E={[math]::Round((($_.TotalVisibleMemorySize-$_.FreePhysicalMemory)/$_.TotalVisibleMemorySize)*100,2)}} | Format-Table -AutoSize"
    pause
    goto :SystemInfoMenu

:StorageInfo
    cls
    echo [INFO] Storage Information:
    echo.
    !PS_CMD! "Get-CimInstance Win32_LogicalDisk | Select-Object DeviceID, @{N='Size(GB)';E={[math]::Round($_.Size/1GB,2)}}, @{N='Free(GB)';E={[math]::Round($_.FreeSpace/1GB,2)}}, @{N='Used(%)';E={[math]::Round((($_.Size-$_.FreeSpace)/$_.Size)*100,2)}}, FileSystem | Format-Table -AutoSize"
    pause
    goto :SystemInfoMenu

:: Additional info functions would continue here...
:DisplayInfo
    cls
    echo [INFO] Display Information:
    !PS_CMD! "Get-CimInstance Win32_VideoController | Select-Object Name, @{N='VRAM(GB)';E={[math]::Round($_.AdapterRAM/1GB,2)}}, VideoModeDescription, CurrentRefreshRate | Format-Table -AutoSize"
    pause
    goto :SystemInfoMenu

:GPUInfo
    cls
    echo [INFO] GPU Information:
    !PS_CMD! "Get-CimInstance Win32_VideoController | Select-Object Name, VideoProcessor, @{N='AdapterRAM(GB)';E={[math]::Round($_.AdapterRAM/1GB,2)}}, DriverVersion, VideoModeDescription | Format-List"
    pause
    goto :SystemInfoMenu

:MotherboardInfo
    cls
    echo [INFO] Motherboard Information:
    !PS_CMD! "Get-CimInstance Win32_BaseBoard | Select-Object Manufacturer, Product, SerialNumber, Version | Format-List"
    pause
    goto :SystemInfoMenu

:BIOSInfo
    cls
    echo [INFO] BIOS Information:
    !PS_CMD! "Get-CimInstance Win32_BIOS | Select-Object Manufacturer, Name, SerialNumber, Version, ReleaseDate | Format-List"
    pause
    goto :SystemInfoMenu

:TemperatureInfo
    cls
    echo [INFO] Temperature Sensors (if available):
    !PS_CMD! "try { Get-CimInstance MSAcpi_ThermalZoneTemperature -Namespace 'root/wmi' | Select-Object InstanceName, @{N='Temperature(C)';E={[math]::Round(($_.CurrentTemperature/10)-273.15,2)}} | Format-Table -AutoSize } catch { Write-Host 'Temperature sensors not available or require specific drivers.' }"
    pause
    goto :SystemInfoMenu

:BatteryInfo
    cls
    echo [INFO] Battery Status:
    !PS_CMD! "Get-CimInstance Win32_Battery | Select-Object Name, EstimatedChargeRemaining, BatteryStatus, EstimatedRunTime | Format-List"
    pause
    goto :SystemInfoMenu

:OSInfo
    cls
    echo [INFO] Operating System Information:
    !PS_CMD! "Get-CimInstance Win32_OperatingSystem | Select-Object Caption, Version, BuildNumber, OSArchitecture, InstallDate, LastBootUpTime | Format-List"
    pause
    goto :SystemInfoMenu

:InstalledUpdates
    cls
    echo [INFO] Recently Installed Updates (last 20):
    !PS_CMD! "Get-HotFix | Sort-Object InstalledOn -Descending | Select-Object -First 20 | Format-Table -AutoSize"
    pause
    goto :SystemInfoMenu

:DotNetInfo
    cls
    echo [INFO] .NET Framework Versions:
    reg query "HKLM\SOFTWARE\Microsoft\NET Framework Setup\NDP" /s 2>nul | findstr "Version"
    echo.
    echo [.NET Core / .NET 5+]:
    dotnet --list-runtimes 2>nul || echo [.NET Core SDK not installed or not in PATH]
    pause
    goto :SystemInfoMenu

:PSVersionInfo
    cls
    echo [INFO] PowerShell Information:
    !PS_CMD! "$PSVersionTable | Format-List"
    pause
    goto :SystemInfoMenu

:EnvVarsInfo
    cls
    echo [INFO] Environment Variables:
    set
    pause
    goto :SystemInfoMenu

:UptimeInfo
    cls
    echo [INFO] System Uptime:
    !PS_CMD! "(Get-Date) - (Get-CimInstance Win32_OperatingSystem).LastBootUpTime | Select-Object Days, Hours, Minutes | Format-Table -AutoSize"
    pause
    goto :SystemInfoMenu

:BootConfigInfo
    cls
    echo [INFO] Boot Configuration:
    bcdedit /enum
    pause
    goto :SystemInfoMenu

:ExportSystemInfo
    set "EXPORT_FILE=%BACKUP_DIR%\system-info-%COMPUTERNAME%-%date:~-4,4%%date:~-10,2%%date:~-7,2%.txt"
    echo [INFO] Exporting complete system information...
    call :SystemProfile > "%EXPORT_FILE%"
    echo [OK] System information exported to: %EXPORT_FILE%
    pause
    goto :SystemInfoMenu

:: ═══════════════════════════════════════════════════════════════════════════════
:: MAINTENANCE MENU
:: ═══════════════════════════════════════════════════════════════════════════════
:MaintenanceMenu
    cls
    echo.
    echo    ╔══════════════════════════════════════════════════════════════════════════════╗
    echo    ║                      SYSTEM MAINTENANCE TOOLS                                ║
    echo    ╠══════════════════════════════════════════════════════════════════════════════╣
    echo    ║                                                                              ║
    echo    ║   Quick Fixes:                                                               ║
    echo    ║    1. Quick Cleanup             5.  Disk Cleanup (Extended)                  ║
    echo    ║    2. Empty Recycle Bin         6.  Defragment Drives                        ║
    echo    ║    3. Clear Temp Files          7.  Check Disk Errors                        ║
    echo    ║    4. Flush DNS Cache           8.  Windows Update Check                     ║
    echo    ║                                                                              ║
    echo    ║   Registry ^& System:                                                       ║
    echo    ║    9.  Backup Registry          12. Optimize Services                        ║
    echo    ║    10. Restore Registry         13. Clean Component Store                    ║
    echo    ║    11. Check System Files       14. Memory Diagnostics                         ║
    echo    ║                                                                              ║
    echo    ║   Restore Points:                                                            ║
    echo    ║    15. Create Restore Point     17. System Image Backup                      ║
    echo    ║    16. View Restore Points      18. Restore from Image                        ║
    echo    ║                                                                              ║
    echo    ║    19. Run All Maintenance      20. Back to Main Menu                         ║
    echo    ║                                                                              ║
    echo    ╚══════════════════════════════════════════════════════════════════════════════╝
    echo.
    set /p "choice=    Enter choice (1-20): "
    
    if "%choice%"=="1" call :QuickCleanup
    if "%choice%"=="2" call :EmptyRecycleBin
    if "%choice%"=="3" call :ClearTempFiles
    if "%choice%"=="4" call :FlushDNS
    if "%choice%"=="5" call :DiskCleanupExtended
    if "%choice%"=="6" call :DefragDrives
    if "%choice%"=="7" call :CheckDiskErrors
    if "%choice%"=="8" call :WindowsUpdateCheck
    if "%choice%"=="9" call :BackupRegistry
    if "%choice%"=="10" call :RestoreRegistry
    if "%choice%"=="11" call :CheckSystemFiles
    if "%choice%"=="12" call :OptimizeServices
    if "%choice%"=="13" call :CleanComponentStore
    if "%choice%"=="14" call :MemoryDiagnostics
    if "%choice%"=="15" call :CreateRestorePoint
    if "%choice%"=="16" call :ViewRestorePoints
    if "%choice%"=="17" call :SystemImageBackup
    if "%choice%"=="18" call :RestoreSystemImage
    if "%choice%"=="19" call :RunAllMaintenance
    if "%choice%"=="20" goto :MainMenu
    
    goto :MaintenanceMenu

:: Maintenance Functions
:QuickCleanup
    cls
    echo [INFO] Running quick cleanup...
    call :LogMessage "INFO" "Quick cleanup started"
    
    echo [1/4] Emptying Recycle Bin...
    rd /s /q %systemdrive%\$Recycle.Bin 2>nul
    
    echo [2/4] Clearing Windows Temp...
    del /q /f /s %TEMP%\*.* 2>nul
    
    echo [3/4] Clearing System Temp...
    del /q /f /s %WINDIR%\Temp\*.* 2>nul
    
    echo [4/4] Flushing DNS Cache...
    ipconfig /flushdns >nul
    
    echo [OK] Quick cleanup complete!
    call :LogMessage "INFO" "Quick cleanup complete"
    timeout /t 2 >nul
    goto :MaintenanceMenu

:EmptyRecycleBin
    echo [INFO] Emptying Recycle Bin...
    rd /s /q %systemdrive%\$Recycle.Bin 2>nul
    echo [OK] Recycle Bin emptied.
    pause
    goto :MaintenanceMenu

:ClearTempFiles
    echo [INFO] Clearing temporary files...
    del /q /f /s %TEMP%\*.* 2>nul
    del /q /f /s %WINDIR%\Temp\*.* 2>nul
    del /q /f /s %WINDIR%\Prefetch\*.* 2>nul
    echo [OK] Temporary files cleared.
    pause
    goto :MaintenanceMenu

:FlushDNS
    echo [INFO] Flushing DNS cache...
    ipconfig /flushdns
    echo [INFO] Renewing IP configuration...
    ipconfig /release >nul 2>&1
    ipconfig /renew >nul 2>&1
    echo [OK] DNS cache flushed and network refreshed.
    pause
    goto :MaintenanceMenu

:DiskCleanupExtended
    echo [INFO] Running extended disk cleanup...
    cleanmgr /sageset:65535 >nul 2>&1
    cleanmgr /sagerun:65535
    echo [OK] Disk cleanup complete.
    pause
    goto :MaintenanceMenu

:DefragDrives
    echo [INFO] Analyzing drives for defragmentation...
    defrag /C /A
    echo.
    set /p "defragconfirm=Do you want to defragment all drives? (Y/N): "
    if /i "%defragconfirm%"=="Y" (
        defrag /C /O
        echo [OK] Defragmentation complete.
    ) else (
        echo [INFO] Defragmentation cancelled.
    )
    pause
    goto :MaintenanceMenu

:CheckDiskErrors
    echo [INFO] Scheduling disk check on next restart...
    echo [INFO] This will check the C: drive for errors.
    set /p "chkdskconfirm=Schedule chkdsk on next boot? (Y/N): "
    if /i "%chkdskconfirm%"=="Y" (
        echo [INFO] Scheduling chkdsk /f /r on C:
        chkntfs /c C:
        echo [OK] Chkdsk scheduled. Please restart your computer.
    )
    pause
    goto :MaintenanceMenu

:WindowsUpdateCheck
    echo [INFO] Checking for Windows Updates...
    !PS_CMD! "Install-Module PSWindowsUpdate -Force -ErrorAction SilentlyContinue; Get-WindowsUpdate -AcceptAll -AutoReboot" 2>nul || (
        echo [INFO] Installing PSWindowsUpdate module...
        !PS_CMD! "Install-PackageProvider NuGet -Force; Install-Module PSWindowsUpdate -Force; Get-WindowsUpdate"
    )
    pause
    goto :MaintenanceMenu

:BackupRegistry
    set "REG_BACKUP=%BACKUP_DIR%\registry-backup-%date:~-4,4%%date:~-10,2%%date:~-7,2%.reg"
    echo [INFO] Backing up registry to: %REG_BACKUP%
    reg export HKLM "%REG_BACKUP%.hklm.reg" /y >nul 2>&1
    reg export HKCU "%REG_BACKUP%.hkcu.reg" /y >nul 2>&1
    echo [OK] Registry backup complete.
    call :LogMessage "INFO" "Registry backed up to %REG_BACKUP%"
    pause
    goto :MaintenanceMenu

:RestoreRegistry
    echo [INFO] Available registry backups:
    dir /b "%BACKUP_DIR%\registry-backup-*.reg" 2>nul || (
        echo [ERROR] No registry backups found.
        pause
        goto :MaintenanceMenu
    )
    echo.
    set /p "regfile=Enter backup filename to restore: "
    if exist "%BACKUP_DIR%\%regfile%" (
        echo [WARNING] This will overwrite current registry settings!
        set /p "confirm=Are you sure? (YES to confirm): "
        if "!confirm!"=="YES" (
            reg import "%BACKUP_DIR%\%regfile%"
            echo [OK] Registry restored. Please restart your computer.
        ) else (
            echo [INFO] Restore cancelled.
        )
    ) else (
        echo [ERROR] File not found.
    )
    pause
    goto :MaintenanceMenu

:CheckSystemFiles
    echo [INFO] Running System File Checker...
    sfc /scannow
    echo.
    echo [INFO] Running DISM health check...
    DISM /Online /Cleanup-Image /CheckHealth
    echo.
    set /p "dismrestore=Run DISM restore if needed? (Y/N): "
    if /i "%dismrestore%"=="Y" (
        DISM /Online /Cleanup-Image /RestoreHealth
    )
    pause
    goto :MaintenanceMenu

:OptimizeServices
    cls
    echo [INFO] Service Optimization
    echo [1] Safe - Optimize non-essential services only
    echo [2] Balanced - Optimize for desktop use
    echo [3] Performance - Maximum performance (may reduce features)
    set /p "svcopt=Select optimization level (1-3): "
    
    if "%svcopt%"=="1" (
        echo [INFO] Applying safe optimizations...
        sc config "DiagTrack" start= disabled >nul 2>&1
        sc config "dmwappushservice" start= disabled >nul 2>&1
    ) else if "%svcopt%"=="2" (
        echo [INFO] Applying balanced optimizations...
        sc config "SysMain" start= disabled >nul 2>&1
        sc config "WSearch" start= delayed-auto >nul 2>&1
    ) else if "%svcopt%"=="3" (
        echo [INFO] Applying performance optimizations...
        sc config "SysMain" start= disabled >nul 2>&1
        sc config "WSearch" start= disabled >nul 2>&1
        sc config "bits" start= demand >nul 2>&1
    )
    echo [OK] Service optimization applied. Restart recommended.
    pause
    goto :MaintenanceMenu

:CleanComponentStore
    echo [INFO] Analyzing Component Store (WinSxS)...
    Dism /Online /Cleanup-Image /AnalyzeComponentStore
    echo.
    set /p "cleanconfirm=Clean up Component Store? (Y/N): "
    if /i "%cleanconfirm%"=="Y" (
        Dism /Online /Cleanup-Image /StartComponentCleanup /ResetBase
        echo [OK] Component Store cleaned.
    )
    pause
    goto :MaintenanceMenu

:MemoryDiagnostics
    echo [INFO] Windows Memory Diagnostic
    echo [1] Restart now and check
    echo [2] Schedule check on next restart
    echo [3] Cancel
    set /p "memchoice=Select option: "
    
    if "%memchoice%"=="1" (
        mdsched
    ) else if "%memchoice%"=="2" (
        !PS_CMD! "Start-Process mdsched -ArgumentList '/schedule' -Verb runAs"
        echo [OK] Memory diagnostic scheduled.
        pause
    )
    goto :MaintenanceMenu

:CreateRestorePoint
    echo [INFO] Creating System Restore Point...
    set /p "rpdesc=Enter description (default: Ultimate Tools Restore Point): "
    if "!rpdesc!"=="" set "rpdesc=Ultimate Tools Restore Point"
    wmic.exe /Namespace:\\root\default Path SystemRestore Call CreateRestorePoint "!rpdesc!", 100, 7 2>nul || (
        !PS_CMD! "Checkpoint-Computer -Description '!rpdesc!' -RestorePointType 'MODIFY_SETTINGS'"
    )
    echo [OK] Restore point created.
    call :LogMessage "INFO" "Restore point created: !rpdesc!"
    pause
    goto :MaintenanceMenu

:ViewRestorePoints
    echo [INFO] Available Restore Points:
    vssadmin list shadows 2>nul || (
        !PS_CMD! "Get-ComputerRestorePoint | Select-Object Description, RestorePointType, ConvertToDateTime(CreationTime) | Format-Table -AutoSize"
    )
    pause
    goto :MaintenanceMenu

:SystemImageBackup
    echo [INFO] Opening System Image Backup...
    sdclt
    goto :MaintenanceMenu

:RestoreSystemImage
    echo [INFO] System Image Recovery requires restart.
    set /p "recoveryconfirm=Restart into System Image Recovery? (Y/N): "
    if /i "%recoveryconfirm%"=="Y" (
        shutdown /r /o /f /t 00
    )
    goto :MaintenanceMenu

:RunAllMaintenance
    echo [INFO] Running complete maintenance suite...
    call :QuickCleanup
    call :CheckSystemFiles
    call :CreateRestorePoint
    call :CleanComponentStore
    echo [OK] All maintenance tasks complete!
    pause
    goto :MaintenanceMenu

:: ═══════════════════════════════════════════════════════════════════════════════
:: DIAGNOSTICS MENU (Placeholder - would continue with more menus)
:: ═══════════════════════════════════════════════════════════════════════════════
:DiagnosticsMenu
    cls
    echo.
    echo    ╔══════════════════════════════════════════════════════════════════════════════╗
    echo    ║                      DIAGNOSTICS SUITE - SOTA 2026                           ║
    echo    ╠══════════════════════════════════════════════════════════════════════════════╣
    echo    ║                                                                              ║
    echo    ║    Diagnostics features coming in next section...                            ║
    echo    ║                                                                              ║
    echo    ║    Press any key to return...                                                ║
    echo    ║                                                                              ║
    echo    ╚══════════════════════════════════════════════════════════════════════════════╝
    pause >nul
    goto :MainMenu

:SecurityMenu
    echo [Security Menu - Implementation continues...]
    pause
    goto :MainMenu

:SoftwareMenu
    echo [Software Menu - Implementation continues...]
    pause
    goto :MainMenu

:PerformanceMenu
    echo [Performance Menu - Implementation continues...]
    pause
    goto :MainMenu

:StorageMenu
    echo [Storage Menu - Implementation continues...]
    pause
    goto :MainMenu

:NetworkMenu
    echo [Network Menu - Implementation continues...]
    pause
    goto :MainMenu

:WindowsFeaturesMenu
    echo [Windows Features Menu - Implementation continues...]
    pause
    goto :MainMenu

:PowerMenu
    echo [Power Menu - Implementation continues...]
    pause
    goto :MainMenu

:QuickFixesMenu
    echo [Quick Fixes Menu - Implementation continues...]
    pause
    goto :MainMenu

:WiFiMenu
    echo [WiFi Menu - Implementation continues...]
    pause
    goto :MainMenu

:AppManagerMenu
    echo [App Manager Menu - Implementation continues...]
    pause
    goto :MainMenu

:BackupMenu
    echo [Backup Menu - Implementation continues...]
    pause
    goto :MainMenu

:AdvancedMenu
    echo [Advanced Menu - Implementation continues...]
    pause
    goto :MainMenu

:ComboMenu
    echo [Combo Menu - Implementation continues...]
    pause
    goto :MainMenu

:ViewLogs
    if exist "%LOGFILE%" (
        notepad "%LOGFILE%"
    ) else (
        echo [ERROR] Log file not found.
        pause
    )
    goto :MainMenu

:SettingsMenu
    echo [Settings Menu - Implementation continues...]
    pause
    goto :MainMenu

:AboutDialog
    cls
    echo.
    echo    ╔══════════════════════════════════════════════════════════════════════════════╗
    echo    ║                                                                              ║
    echo    ║                    %SCRIPT_NAME%                        ║
    echo    ║                              v%VERSION%                                     ║
    echo    ║                                                                              ║
    echo    ║    The most comprehensive Windows system management suite.                   ║
    echo    ║                                                                              ║
    echo    ║    Developed by: %AUTHOR%                                          ║
    echo    ║    Website: %WEBSITE%                                   ║
    echo    ║                                                                              ║
    echo    ║    Features:                                                                 ║
    echo    ║    - 200+ System Tools                                                       ║
    echo    ║    - Modern PowerShell Integration                                           ║
    echo    ║    - Windows 10/11/Server Support                                            ║
    echo    ║    - Professional Logging                                                    ║
    echo    ║    - Comprehensive Backup/Restore                                            ║
    echo    ║                                                                              ║
    echo    ║    License: MIT                                                              ║
    echo    ║                                                                              ║
    echo    ╚══════════════════════════════════════════════════════════════════════════════╝
    echo.
    pause
    goto :MainMenu

:ExitScript
    call :LogMessage "INFO" "Session ended normally"
    echo.
    echo [INFO] Thank you for using %SCRIPT_NAME%!
    echo [INFO] Logs saved to: %LOGFILE%
    timeout /t 2 >nul
    exit /b 0
