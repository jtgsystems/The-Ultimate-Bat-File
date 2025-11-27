@echo off
:: The Ultimate Bat File - Enhanced Version 2.0
:: Created by JTG Systems - Professional Windows System Management Suite
:: https://www.jtgsystems.com

:: Enable enhanced error handling and security
setlocal enabledelayedexpansion
set "SCRIPT_DIR=%~dp0"
for %%i in ("%~dp0..") do set "SRC_DIR=%%~fi"
for %%i in ("%~dp0..\..") do set "ROOT_DIR=%%~fi"
set "MODULES_DIR=%SRC_DIR%\modules"
set "LOG_DIR=%ROOT_DIR%\logs"
set "CONFIG_DIR=%ROOT_DIR%\config"
set "BACKUP_DIR=%ROOT_DIR%\backups"
set "POWERSHELL_CMD=powershell -NoLogo -NoProfile -ExecutionPolicy Bypass -Command"
set "LOGFILE=%LOG_DIR%\tools_%date:~-4,4%%date:~-10,2%%date:~-7,2%.log"

:: Create required directories if they don't exist
if not exist "%LOG_DIR%" mkdir "%LOG_DIR%"
if not exist "%BACKUP_DIR%" mkdir "%BACKUP_DIR%" >nul 2>&1

:: Enhanced UAC and Admin Rights Check
call :CheckAdminRights
if !errorlevel! neq 0 (
    echo [ERROR] Administrative privileges required but not obtained.
    pause
    exit /b 1
)

:: Initialize logging
call :InitializeLogging

:: System requirements verification
call :VerifySystemRequirements
if !errorlevel! neq 0 (
    echo [ERROR] System requirements not met.
    pause
    exit /b 1
)

:: Load configuration and modules
call :LoadConfiguration
call :LoadModules

:: Main application entry point
call :MainMenu
goto :EOF

:CheckAdminRights
    echo [INFO] Checking administrative privileges...
    net session >nul 2>&1
    if !errorlevel! neq 0 (
        echo [WARNING] Script requires administrative privileges.
        echo [INFO] Attempting to elevate privileges...
        
        :: Create elevation script
        echo Set UAC = CreateObject^("Shell.Application"^) > "%temp%\elevate.vbs"
        echo UAC.ShellExecute "%~s0", "", "", "runas", 1 >> "%temp%\elevate.vbs"
        
        :: Execute elevation
        cscript //nologo "%temp%\elevate.vbs" >nul 2>&1
        if exist "%temp%\elevate.vbs" del "%temp%\elevate.vbs"
        
        :: Exit original instance
        exit /b 1
    )
    
    echo [SUCCESS] Administrative privileges confirmed.
    exit /b 0

:InitializeLogging
    echo ========================================= >> "%LOGFILE%"
    echo Ultimate Tools Enhanced - Session Start  >> "%LOGFILE%"
    echo Date: %date% %time%                      >> "%LOGFILE%"
    echo User: %username%                         >> "%LOGFILE%"
    echo Computer: %computername%                 >> "%LOGFILE%"
    echo OS: %OS%                                 >> "%LOGFILE%"
    echo ========================================= >> "%LOGFILE%"
    exit /b 0

:VerifySystemRequirements
    echo [INFO] Verifying system requirements...
    
    :: Check for PowerShell
    powershell -Command "Get-Host" >nul 2>&1
    if !errorlevel! neq 0 (
        echo [ERROR] PowerShell is required but not available.
        echo PowerShell check failed >> "%LOGFILE%"
        exit /b 1
    )
    
    :: Check for WMIC (legacy support)
    where wmic >nul 2>&1
    if !errorlevel! neq 0 (
        echo [WARNING] WMIC not available, using PowerShell alternatives.
        set "USE_POWERSHELL=true"
        echo WMIC unavailable, using PowerShell >> "%LOGFILE%"
    ) else (
        set "USE_POWERSHELL=false"
        echo WMIC available >> "%LOGFILE%"
    )
    
    :: Check Windows version compatibility
    for /f "tokens=3" %%v in ('reg query "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion" /v CurrentVersion 2^>nul') do set "WINVER=%%v"
    if "!WINVER!" lss "10.0" (
        echo [WARNING] Windows 10+ recommended for full functionality.
        echo Windows version: !WINVER! >> "%LOGFILE%"
    )
    
    :: Test internet connectivity
    ping -n 1 8.8.8.8 >nul 2>&1
    if !errorlevel! neq 0 (
        echo [WARNING] No internet connection detected.
        set "INTERNET_AVAILABLE=false"
        echo Internet: Unavailable >> "%LOGFILE%"
    ) else (
        echo [INFO] Internet connectivity verified.
        set "INTERNET_AVAILABLE=true"
        echo Internet: Available >> "%LOGFILE%"
    )
    
    echo [SUCCESS] System requirements verified.
    echo System requirements verified >> "%LOGFILE%"
    exit /b 0

:LoadConfiguration
    :: Set default configuration
    set "CONFIG_THEME=dark"
    set "CONFIG_VERBOSE=false"
    set "CONFIG_AUTO_UPDATE=true"
    set "CONFIG_TELEMETRY=false"
    
    :: Load user configuration if exists
    if exist "%CONFIG_DIR%\user.conf" (
        call "%CONFIG_DIR%\user.conf"
        echo Configuration loaded from user.conf >> "%LOGFILE%"
    )
    
    :: Apply theme
    if "!CONFIG_THEME!"=="dark" (
        color 0A
    ) else if "!CONFIG_THEME!"=="light" (
        color F0
    ) else (
        color 07
    )
    
    exit /b 0

:LoadModules
    echo [INFO] Loading system modules...
    
    :: Load core modules
    set "MODULES_LOADED=0"
    for %%m in (system-info maintenance diagnostics networking security) do (
        if exist "%MODULES_DIR%\%%m.bat" (
            call "%MODULES_DIR%\%%m.bat" :LoadModule
            set /a "MODULES_LOADED+=1"
            echo Module loaded: %%m >> "%LOGFILE%"
        ) else (
            echo Module missing: %%m >> "%LOGFILE%"
        )
    )
    
    echo [SUCCESS] !MODULES_LOADED! modules loaded successfully.
    echo Modules loaded: !MODULES_LOADED! >> "%LOGFILE%"
    exit /b 0

:MainMenu
    cls
    echo.
    echo  ╔══════════════════════════════════════════════════════════════╗
    echo  ║              THE ULTIMATE BAT FILE - ENHANCED v2.0          ║
    echo  ║                    Professional System Tools                 ║
    echo  ║                      by JTG Systems                         ║
    echo  ╚══════════════════════════════════════════════════════════════╝
    echo.
    echo  ┌─ SYSTEM MANAGEMENT ────────────────────────────────────────────┐
    echo  │ 1.  System Information      │ 9.   Windows Access Tools      │
    echo  │ 2.  System Maintenance      │ 10.  WiFi Network Manager      │
    echo  │ 3.  Diagnostic Tools        │ 11.  App Management Tools      │
    echo  │ 4.  Networking Tools        │ 12.  Privacy Settings          │
    echo  └─────────────────────────────┴─────────────────────────────────┘
    echo.
    echo  ┌─ SECURITY & PERFORMANCE ───────────────────────────────────────┐
    echo  │ 5.  Security Center         │ 13.  Modern Windows Features   │
    echo  │ 6.  Troubleshooting Tools   │ 14.  Disk Health Monitor       │
    echo  │ 7.  Performance Monitor     │ 15.  Advanced Diagnostics      │
    echo  │ 8.  Software Management     │ 16.  Automation Scripts        │
    echo  └─────────────────────────────┴─────────────────────────────────┘
    echo.
    echo  ┌─ SYSTEM OPTIONS ───────────────────────────────────────────────┐
    echo  │ 17. Settings & Configuration │ 19.  Help & Documentation      │
    echo  │ 18. Update & Maintenance     │ 20.  Exit                      │
    echo  └─────────────────────────────┴─────────────────────────────────┘
    echo.
    
    :: Display system status
    call :DisplaySystemStatus
    
    echo.
    set /p "choice=Select an option (1-20): "
    
    :: Log user choice
    echo User selected option: !choice! >> "%LOGFILE%"
    
    :: Route to appropriate menu
    if "!choice!"=="1" call :SystemInfoMenu
    if "!choice!"=="2" call :SystemMaintenanceMenu
    if "!choice!"=="3" call :DiagnosticMenu
    if "!choice!"=="4" call :NetworkingMenu
    if "!choice!"=="5" call :SecurityCenterMenu
    if "!choice!"=="6" call :TroubleshootingMenu
    if "!choice!"=="7" call :PerformanceMenu
    if "!choice!"=="8" call :SoftwareMenu
    if "!choice!"=="9" call :WindowsAccessMenu
    if "!choice!"=="10" call :WiFiManagerMenu
    if "!choice!"=="11" call :AppManagementMenu
    if "!choice!"=="12" call :PrivacySettingsMenu
    if "!choice!"=="13" call :ModernFeaturesMenu
    if "!choice!"=="14" call :DiskHealthMenu
    if "!choice!"=="15" call :AdvancedDiagnosticsMenu
    if "!choice!"=="16" call :AutomationMenu
    if "!choice!"=="17" call :SettingsMenu
    if "!choice!"=="18" call :UpdateMaintenanceMenu
    if "!choice!"=="19" call :HelpMenu
    if "!choice!"=="20" goto :ExitScript
    
    :: Invalid choice handling
    if not defined choice (
        echo [WARNING] No option selected.
        timeout /t 2 >nul
    ) else (
        echo [WARNING] Invalid selection: !choice!
        echo Invalid selection: !choice! >> "%LOGFILE%"
        timeout /t 2 >nul
    )
    
    goto :MainMenu

:DisplaySystemStatus
    echo  ┌─ SYSTEM STATUS ────────────────────────────────────────────────┐
    
    if /i "!USE_POWERSHELL!"=="true" (
        call %POWERSHELL_CMD% "$os = Get-CimInstance Win32_OperatingSystem; $cpu = Get-CimInstance Win32_Processor | Measure-Object -Property LoadPercentage -Average; $memUsed = [math]::Round((($os.TotalVisibleMemorySize - $os.FreePhysicalMemory) / $os.TotalVisibleMemorySize) * 100, 0); $lastBoot = Get-Date $os.LastBootUpTime -Format 'yyyy/MM/dd HH:mm'; Write-Host ('  │ Last Boot: ' + $lastBoot); Write-Host ('  │ CPU Usage: ' + $cpu.Average + '%%'); Write-Host ('  │ Memory Usage: ' + $memUsed + '%%');"
    ) else (
        :: Get system uptime via WMIC
        for /f "skip=1 tokens=1-6" %%a in ('wmic os get lastbootuptime ^| findstr "20"') do set "boottime=%%a"
        if defined boottime (
            set "uptime_year=!boottime:~0,4!"
            set "uptime_month=!boottime:~4,2!"
            set "uptime_day=!boottime:~6,2!"
            set "uptime_hour=!boottime:~8,2!"
            set "uptime_min=!boottime:~10,2!"
            echo  │ Last Boot: !uptime_year!/!uptime_month!/!uptime_day! !uptime_hour!:!uptime_min!
        )
        
        :: Get CPU usage
        for /f "skip=1 tokens=2" %%p in ('wmic cpu get loadpercentage /value 2^>nul ^| findstr "="') do (
            set "cpu_load=%%p"
            echo  │ CPU Usage: !cpu_load!%%
        )
        
        :: Get memory usage
        for /f "skip=1" %%m in ('wmic OS get TotalVisibleMemorySize /value 2^>nul ^| findstr "="') do set "%%m"
        for /f "skip=1" %%m in ('wmic OS get FreePhysicalMemory /value 2^>nul ^| findstr "="') do set "%%m"
        if defined TotalVisibleMemorySize if defined FreePhysicalMemory (
            set /a "mem_used=(!TotalVisibleMemorySize! - !FreePhysicalMemory!) * 100 / !TotalVisibleMemorySize!"
            echo  │ Memory Usage: !mem_used!%%
        )
    )
    
    :: Network status
    if "!INTERNET_AVAILABLE!"=="true" (
        echo  │ Network: Connected
    ) else (
        echo  │ Network: Disconnected
    )
    
    echo  └────────────────────────────────────────────────────────────────┘
    exit /b 0

:SystemInfoMenu
    cls
    echo.
    echo  ╔══════════════════════════════════════════════════════════════╗
    echo  ║                    SYSTEM INFORMATION TOOLS                  ║
    echo  ╚══════════════════════════════════════════════════════════════╝
    echo.
    echo  1.  Complete System Overview    11. Memory (RAM) Information
    echo  2.  System Specifications       12. Storage Device Details
    echo  3.  Operating System Details    13. Network Adapter Info
    echo  4.  Hardware Information        14. Driver Information
    echo  5.  BIOS/UEFI Information      15. Environment Variables
    echo  6.  CPU Specifications         16. System Services Status
    echo  7.  System Uptime              17. Installed Updates
    echo  8.  Boot Configuration         18. System Registry Info
    echo  9.  User Account Information   19. Windows Features Status
    echo  10. System Temperature         20. Back to Main Menu
    echo.
    set /p "info_choice=Select information type (1-20): "
    
    echo System Info - Option !info_choice! selected >> "%LOGFILE%"
    
    if "!info_choice!"=="1" call :SystemOverview
    if "!info_choice!"=="2" call :SystemSpecs
    if "!info_choice!"=="3" call :OSDetails
    if "!info_choice!"=="4" call :HardwareInfo
    if "!info_choice!"=="5" call :BiosInfo
    if "!info_choice!"=="6" call :CPUSpecs
    if "!info_choice!"=="7" call :SystemUptime
    if "!info_choice!"=="8" call :BootConfig
    if "!info_choice!"=="9" call :UserAccountInfo
    if "!info_choice!"=="10" call :SystemTemperature
    if "!info_choice!"=="11" call :MemoryInfo
    if "!info_choice!"=="12" call :StorageDetails
    if "!info_choice!"=="13" call :NetworkAdapterInfo
    if "!info_choice!"=="14" call :DriverInfo
    if "!info_choice!"=="15" call :EnvironmentVars
    if "!info_choice!"=="16" call :ServicesStatus
    if "!info_choice!"=="17" call :InstalledUpdates
    if "!info_choice!"=="18" call :RegistryInfo
    if "!info_choice!"=="19" call :WindowsFeaturesStatus
    if "!info_choice!"=="20" goto :MainMenu
    
    pause
    goto :SystemInfoMenu

:SystemOverview
    echo.
    echo ┌─ COMPLETE SYSTEM OVERVIEW ─────────────────────────────────────┐
    echo │ Generating comprehensive system report...                       │
    echo └─────────────────────────────────────────────────────────────────┘
    echo.
    
    :: Use PowerShell for modern system information
    powershell -Command "
        Write-Host 'COMPUTER INFORMATION:' -ForegroundColor Cyan
        Get-ComputerInfo | Select-Object CsName, CsManufacturer, CsModel, CsTotalPhysicalMemory | Format-List
        
        Write-Host 'OPERATING SYSTEM:' -ForegroundColor Cyan
        Get-ComputerInfo | Select-Object WindowsProductName, WindowsVersion, WindowsBuildLabEx | Format-List
        
        Write-Host 'PROCESSOR:' -ForegroundColor Cyan
        Get-CimInstance Win32_Processor | Select-Object Name, MaxClockSpeed, NumberOfCores, NumberOfLogicalProcessors | Format-List
        
        Write-Host 'MEMORY:' -ForegroundColor Cyan
        $memory = Get-CimInstance Win32_PhysicalMemory | Measure-Object -Property Capacity -Sum
        Write-Host ('Total RAM: {0:N2} GB' -f ($memory.Sum / 1GB))
        
        Write-Host 'STORAGE:' -ForegroundColor Cyan
        Get-CimInstance Win32_LogicalDisk | Where-Object DriveType -eq 3 | ForEach-Object {
            Write-Host ('Drive {0}: {1:N2} GB total, {2:N2} GB free' -f $_.DeviceID, ($_.Size / 1GB), ($_.FreeSpace / 1GB))
        }
    "
    
    echo.
    echo System overview completed at %date% %time% >> "%LOGFILE%"
    exit /b 0

:SystemSpecs
    echo.
    echo ┌─ SYSTEM SPECIFICATIONS ────────────────────────────────────────┐
    echo │ Gathering detailed hardware specifications...                   │
    echo └─────────────────────────────────────────────────────────────────┘
    echo.
    
    :: Enhanced system specifications using PowerShell
    powershell -Command "
        Write-Host 'MOTHERBOARD INFORMATION:' -ForegroundColor Green
        Get-CimInstance Win32_BaseBoard | Select-Object Manufacturer, Product, Version | Format-List
        
        Write-Host 'GRAPHICS CARDS:' -ForegroundColor Green
        Get-CimInstance Win32_VideoController | Select-Object Name, DriverVersion, AdapterRAM | Format-List
        
        Write-Host 'AUDIO DEVICES:' -ForegroundColor Green
        Get-CimInstance Win32_SoundDevice | Select-Object Name, Manufacturer | Format-List
        
        Write-Host 'USB CONTROLLERS:' -ForegroundColor Green
        Get-CimInstance Win32_USBController | Select-Object Name | Format-List
    "
    
    echo System specifications retrieved at %date% %time% >> "%LOGFILE%"
    exit /b 0

:OSDetails
    echo.
    echo ┌─ OPERATING SYSTEM DETAILS ─────────────────────────────────────┐
    echo │ Retrieving comprehensive OS information...                      │
    echo └─────────────────────────────────────────────────────────────────┘
    echo.
    
    powershell -Command "
        $os = Get-CimInstance Win32_OperatingSystem
        $cs = Get-CimInstance Win32_ComputerSystem
        
        Write-Host 'WINDOWS DETAILS:' -ForegroundColor Yellow
        Write-Host ('Operating System: ' + $os.Caption)
        Write-Host ('Version: ' + $os.Version)
        Write-Host ('Build Number: ' + $os.BuildNumber)
        Write-Host ('Install Date: ' + $os.InstallDate)
        Write-Host ('Last Boot: ' + $os.LastBootUpTime)
        Write-Host ('System Directory: ' + $os.SystemDirectory)
        Write-Host ('Architecture: ' + $os.OSArchitecture)
        Write-Host ('Locale: ' + $os.Locale)
        Write-Host ('Time Zone: ' + $os.CurrentTimeZone)
        Write-Host ('Domain/Workgroup: ' + $cs.Domain)
        Write-Host ('System Type: ' + $cs.SystemType)
    "
    
    echo OS details retrieved at %date% %time% >> "%LOGFILE%"
    exit /b 0

:ExitScript
    echo.
    echo ┌─ SHUTTING DOWN ────────────────────────────────────────────────┐
    echo │ Cleaning up and preparing to exit...                           │
    echo └─────────────────────────────────────────────────────────────────┘
    
    :: Cleanup operations
    echo Session ended at %date% %time% >> "%LOGFILE%"
    echo Cleanup completed >> "%LOGFILE%"
    
    :: Remove temporary files
    if exist "%temp%\ultimate_tools_*" del /q "%temp%\ultimate_tools_*" >nul 2>&1
    
    echo.
    echo [SUCCESS] Thank you for using The Ultimate Bat File Enhanced!
    echo [INFO] Session logged to: %LOGFILE%
    echo [INFO] Visit https://www.jtgsystems.com for updates and support
    echo.
    timeout /t 3 >nul
    endlocal
    exit /b 0

:: Additional menu stubs (to be implemented in separate modules)
:SystemMaintenanceMenu
:DiagnosticMenu
:NetworkingMenu
:SecurityCenterMenu
:TroubleshootingMenu
:PerformanceMenu
:SoftwareMenu
:WindowsAccessMenu
:WiFiManagerMenu
:AppManagementMenu
:PrivacySettingsMenu
:ModernFeaturesMenu
:DiskHealthMenu
:AdvancedDiagnosticsMenu
:AutomationMenu
:SettingsMenu
:UpdateMaintenanceMenu
:HelpMenu
    echo.
    echo [INFO] This feature is being modularized and will be available in the next update.
    echo [INFO] Returning to main menu...
    timeout /t 2 >nul
    goto :MainMenu

:: Stub implementations for demonstration
:CPUSpecs
:SystemUptime
:BootConfig
:UserAccountInfo
:SystemTemperature
:MemoryInfo
:StorageDetails
:NetworkAdapterInfo
:DriverInfo
:EnvironmentVars
:ServicesStatus
:InstalledUpdates
:RegistryInfo
:WindowsFeaturesStatus
:HardwareInfo
:BiosInfo
    echo.
    echo [INFO] Feature implementation in progress...
    echo [INFO] This will be available in the modular update.
    timeout /t 2 >nul
    exit /b 0
