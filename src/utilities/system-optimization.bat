@echo off
:: System Optimization Utilities
:: Advanced Windows performance optimization and maintenance tools

:OptimizeSystem
    setlocal enabledelayedexpansion
    
    echo ┌─ SYSTEM OPTIMIZATION SUITE ────────────────────────────────────────┐
    echo │ Starting comprehensive system optimization...                       │
    echo └─────────────────────────────────────────────────────────────────────┘
    echo.
    
    set "OPTIMIZATION_LOG=%~dp0\..\logs\optimization_%date:~-4,4%%date:~-10,2%%date:~-7,2%.log"
    echo Starting system optimization at %date% %time% > "%OPTIMIZATION_LOG%"
    
    call :CleanupTemporaryFiles
    call :OptimizeRegistry
    call :DefragmentDisks
    call :UpdateSystemFiles
    call :OptimizeServices
    call :ClearEventLogs
    call :OptimizeNetworkSettings
    
    echo.
    echo ┌─ OPTIMIZATION COMPLETE ─────────────────────────────────────────────┐
    echo │ System optimization has been completed successfully.                 │
    echo │ Restart your computer to apply all changes.                         │
    echo └─────────────────────────────────────────────────────────────────────┘
    
    echo Optimization completed at %date% %time% >> "%OPTIMIZATION_LOG%"
    endlocal
    exit /b 0

:CleanupTemporaryFiles
    echo [1/7] Cleaning temporary files...
    
    :: Clean Windows temp directories
    if exist "%temp%" (
        echo Cleaning user temp directory... >> "%OPTIMIZATION_LOG%"
        del /f /s /q "%temp%\*" >nul 2>&1
        for /d %%d in ("%temp%\*") do rd /s /q "%%d" >nul 2>&1
    )
    
    if exist "%windir%\temp" (
        echo Cleaning Windows temp directory... >> "%OPTIMIZATION_LOG%"
        del /f /s /q "%windir%\temp\*" >nul 2>&1
        for /d %%d in ("%windir%\temp\*") do rd /s /q "%%d" >nul 2>&1
    )
    
    :: Clean browser caches
    echo Cleaning browser caches... >> "%OPTIMIZATION_LOG%"
    
    :: Chrome
    if exist "%localappdata%\Google\Chrome\User Data\Default\Cache" (
        del /f /s /q "%localappdata%\Google\Chrome\User Data\Default\Cache\*" >nul 2>&1
    )
    
    :: Firefox
    if exist "%appdata%\Mozilla\Firefox\Profiles" (
        for /d %%p in ("%appdata%\Mozilla\Firefox\Profiles\*") do (
            if exist "%%p\cache2" del /f /s /q "%%p\cache2\*" >nul 2>&1
        )
    )
    
    :: Edge
    if exist "%localappdata%\Microsoft\Edge\User Data\Default\Cache" (
        del /f /s /q "%localappdata%\Microsoft\Edge\User Data\Default\Cache\*" >nul 2>&1
    )
    
    :: Run Disk Cleanup
    echo Running Disk Cleanup... >> "%OPTIMIZATION_LOG%"
    cleanmgr /sagerun:1 >nul 2>&1
    
    echo ✓ Temporary files cleaned
    exit /b 0

:OptimizeRegistry
    echo [2/7] Optimizing Windows Registry...
    
    echo Optimizing registry at %date% %time% >> "%OPTIMIZATION_LOG%"
    
    :: Create registry backup
    echo Creating registry backup... >> "%OPTIMIZATION_LOG%"
    reg export HKLM "%~dp0\..\backups\registry_backup_%date:~-4,4%%date:~-10,2%%date:~-7,2%.reg" >nul 2>&1
    
    :: Optimize registry settings for performance
    powershell -Command "
        # Disable unnecessary visual effects for performance
        Set-ItemProperty -Path 'HKCU:\Control Panel\Desktop' -Name 'DragFullWindows' -Value '0' -ErrorAction SilentlyContinue
        Set-ItemProperty -Path 'HKCU:\Control Panel\Desktop' -Name 'MenuShowDelay' -Value '0' -ErrorAction SilentlyContinue
        
        # Optimize explorer settings
        Set-ItemProperty -Path 'HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced' -Name 'ListviewAlphaSelect' -Value '0' -ErrorAction SilentlyContinue
        Set-ItemProperty -Path 'HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced' -Name 'ListviewShadow' -Value '0' -ErrorAction SilentlyContinue
        Set-ItemProperty -Path 'HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced' -Name 'TaskbarAnimations' -Value '0' -ErrorAction SilentlyContinue
        
        # Optimize system responsiveness
        Set-ItemProperty -Path 'HKLM:\SYSTEM\CurrentControlSet\Control\PriorityControl' -Name 'Win32PrioritySeparation' -Value '38' -ErrorAction SilentlyContinue
        
        Write-Host 'Registry optimization completed'
    " >> "%OPTIMIZATION_LOG%" 2>&1
    
    echo ✓ Registry optimized
    exit /b 0

:DefragmentDisks
    echo [3/7] Analyzing and optimizing disk drives...
    
    echo Starting disk optimization at %date% %time% >> "%OPTIMIZATION_LOG%"
    
    :: Get all fixed drives and optimize them
    for /f "tokens=1" %%d in ('wmic logicaldisk where "DriveType=3" get DeviceID /value ^| findstr "="') do (
        set "drive=%%d"
        set "drive=!drive:~9,2!"
        
        echo Optimizing drive !drive! >> "%OPTIMIZATION_LOG%"
        
        :: Check if drive is SSD or HDD
        powershell -Command "
            $drive = '!drive!'
            $physicalDisk = Get-PhysicalDisk | Where-Object { $_.DeviceID -eq (Get-Partition -DriveLetter $drive.Replace(':','') | Get-Disk).Number } -ErrorAction SilentlyContinue
            
            if ($physicalDisk.MediaType -eq 'SSD') {
                Write-Host 'SSD detected for drive !drive! - Running TRIM optimization'
                defrag !drive! /L
            } else {
                Write-Host 'HDD detected for drive !drive! - Running defragmentation'
                defrag !drive! /O /H
            }
        " >> "%OPTIMIZATION_LOG%" 2>&1
    )
    
    echo ✓ Disk optimization completed
    exit /b 0

:UpdateSystemFiles
    echo [4/7] Checking and repairing system files...
    
    echo Starting system file check at %date% %time% >> "%OPTIMIZATION_LOG%"
    
    :: Run System File Checker
    echo Running SFC scan... >> "%OPTIMIZATION_LOG%"
    sfc /scannow >> "%OPTIMIZATION_LOG%" 2>&1
    
    :: Run DISM health check
    echo Running DISM health check... >> "%OPTIMIZATION_LOG%"
    dism /online /cleanup-image /checkhealth >> "%OPTIMIZATION_LOG%" 2>&1
    dism /online /cleanup-image /scanhealth >> "%OPTIMIZATION_LOG%" 2>&1
    dism /online /cleanup-image /restorehealth >> "%OPTIMIZATION_LOG%" 2>&1
    
    echo ✓ System files checked and repaired
    exit /b 0

:OptimizeServices
    echo [5/7] Optimizing Windows services...
    
    echo Optimizing services at %date% %time% >> "%OPTIMIZATION_LOG%"
    
    :: Optimize services for better performance
    powershell -Command "
        # Services to optimize (set to manual or disable if not needed)
        $servicesToOptimize = @(
            @{Name='Fax'; StartType='Manual'},
            @{Name='TabletInputService'; StartType='Manual'},
            @{Name='Themes'; StartType='Automatic'},
            @{Name='Windows Search'; StartType='Automatic'}
        )
        
        foreach ($service in $servicesToOptimize) {
            try {
                $svc = Get-Service -Name $service.Name -ErrorAction SilentlyContinue
                if ($svc) {
                    Set-Service -Name $service.Name -StartupType $service.StartType -ErrorAction SilentlyContinue
                    Write-Host ('Optimized service: ' + $service.Name + ' -> ' + $service.StartType)
                }
            } catch {
                Write-Host ('Could not optimize service: ' + $service.Name)
            }
        }
    " >> "%OPTIMIZATION_LOG%" 2>&1
    
    echo ✓ Services optimized
    exit /b 0

:ClearEventLogs
    echo [6/7] Clearing system event logs...
    
    echo Clearing event logs at %date% %time% >> "%OPTIMIZATION_LOG%"
    
    :: Clear Windows Event Logs (keep critical ones)
    powershell -Command "
        $logsToKeep = @('System', 'Security', 'Application')
        
        Get-WinEvent -ListLog * | ForEach-Object {
            if ($logsToKeep -notcontains $_.LogName) {
                try {
                    wevtutil cl $_.LogName
                    Write-Host ('Cleared log: ' + $_.LogName)
                } catch {
                    Write-Host ('Could not clear log: ' + $_.LogName)
                }
            }
        }
    " >> "%OPTIMIZATION_LOG%" 2>&1
    
    echo ✓ Event logs cleared
    exit /b 0

:OptimizeNetworkSettings
    echo [7/7] Optimizing network settings...
    
    echo Optimizing network settings at %date% %time% >> "%OPTIMIZATION_LOG%"
    
    :: Reset and optimize network stack
    echo Resetting network stack... >> "%OPTIMIZATION_LOG%"
    netsh winsock reset >> "%OPTIMIZATION_LOG%" 2>&1
    netsh int ip reset >> "%OPTIMIZATION_LOG%" 2>&1
    
    :: Optimize TCP settings
    powershell -Command "
        # Optimize TCP settings for better performance
        netsh int tcp set global autotuninglevel=normal
        netsh int tcp set global chimney=enabled
        netsh int tcp set global rss=enabled
        netsh int tcp set global netdma=enabled
        
        Write-Host 'Network optimization completed'
    " >> "%OPTIMIZATION_LOG%" 2>&1
    
    :: Flush DNS cache
    ipconfig /flushdns >> "%OPTIMIZATION_LOG%" 2>&1
    
    echo ✓ Network settings optimized
    exit /b 0

:CreateSystemBackup
    echo ┌─ CREATING SYSTEM BACKUP ───────────────────────────────────────────┐
    echo │ Creating comprehensive system backup...                             │
    echo └─────────────────────────────────────────────────────────────────────┘
    
    set "BACKUP_DIR=%~dp0\..\backups\system_backup_%date:~-4,4%%date:~-10,2%%date:~-7,2%"
    
    if not exist "%BACKUP_DIR%" mkdir "%BACKUP_DIR%"
    
    :: Export registry
    echo Backing up registry...
    reg export HKLM "%BACKUP_DIR%\registry_HKLM.reg" >nul 2>&1
    reg export HKCU "%BACKUP_DIR%\registry_HKCU.reg" >nul 2>&1
    
    :: Backup system information
    echo Backing up system information...
    systeminfo > "%BACKUP_DIR%\systeminfo.txt"
    driverquery /v > "%BACKUP_DIR%\drivers.txt"
    
    :: Create system restore point
    echo Creating system restore point...
    powershell -Command "Checkpoint-Computer -Description 'Ultimate Tools Backup Point' -RestorePointType 'MODIFY_SETTINGS'" >nul 2>&1
    
    echo ✓ System backup completed: %BACKUP_DIR%
    exit /b 0