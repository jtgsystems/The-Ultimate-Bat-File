@echo off
:: System Information Module for Ultimate Tools Enhanced
:: Provides comprehensive system information gathering capabilities

:LoadModule
    echo System Information module loaded
    exit /b 0

:GetSystemInfo
    setlocal enabledelayedexpansion
    
    echo ┌─ SYSTEM INFORMATION GATHERING ─────────────────────────────────────┐
    echo │ Collecting comprehensive system data...                             │
    echo └─────────────────────────────────────────────────────────────────────┘
    echo.
    
    :: Modern PowerShell-based system information gathering
    powershell -Command "
        # System Information Collection Script
        Write-Host 'SYSTEM OVERVIEW:' -ForegroundColor Cyan
        
        # Basic Computer Information
        $computerInfo = Get-ComputerInfo
        Write-Host ('Computer Name: ' + $env:COMPUTERNAME)
        Write-Host ('User: ' + $env:USERNAME)
        Write-Host ('Domain: ' + $env:USERDOMAIN)
        Write-Host ('Manufacturer: ' + $computerInfo.CsManufacturer)
        Write-Host ('Model: ' + $computerInfo.CsModel)
        Write-Host ''
        
        # Operating System Details
        Write-Host 'OPERATING SYSTEM:' -ForegroundColor Green
        Write-Host ('OS Name: ' + $computerInfo.WindowsProductName)
        Write-Host ('Version: ' + $computerInfo.WindowsVersion)
        Write-Host ('Build: ' + $computerInfo.WindowsBuildLabEx)
        Write-Host ('Architecture: ' + $computerInfo.OsArchitecture)
        Write-Host ('Install Date: ' + $computerInfo.WindowsInstallDateFromRegistry)
        Write-Host ''
        
        # Hardware Information
        Write-Host 'HARDWARE DETAILS:' -ForegroundColor Yellow
        
        # CPU Information
        $processor = Get-CimInstance Win32_Processor | Select-Object -First 1
        Write-Host ('CPU: ' + $processor.Name)
        Write-Host ('Cores: ' + $processor.NumberOfCores + ' cores, ' + $processor.NumberOfLogicalProcessors + ' threads')
        Write-Host ('Max Speed: ' + $processor.MaxClockSpeed + ' MHz')
        
        # Memory Information
        $totalMemory = (Get-CimInstance Win32_PhysicalMemory | Measure-Object -Property Capacity -Sum).Sum
        $freeMemory = (Get-CimInstance Win32_OperatingSystem).FreePhysicalMemory * 1024
        Write-Host ('Total RAM: ' + [math]::Round($totalMemory / 1GB, 2) + ' GB')
        Write-Host ('Available RAM: ' + [math]::Round($freeMemory / 1GB, 2) + ' GB')
        Write-Host ''
        
        # Storage Information
        Write-Host 'STORAGE DEVICES:' -ForegroundColor Magenta
        Get-CimInstance Win32_LogicalDisk | Where-Object {$_.DriveType -eq 3} | ForEach-Object {
            $totalSize = [math]::Round($_.Size / 1GB, 2)
            $freeSpace = [math]::Round($_.FreeSpace / 1GB, 2)
            $usedSpace = $totalSize - $freeSpace
            $percentUsed = [math]::Round(($usedSpace / $totalSize) * 100, 1)
            Write-Host ('Drive ' + $_.DeviceID + ' - Total: ' + $totalSize + ' GB, Used: ' + $usedSpace + ' GB (' + $percentUsed + '%), Free: ' + $freeSpace + ' GB')
        }
        Write-Host ''
        
        # Network Information
        Write-Host 'NETWORK ADAPTERS:' -ForegroundColor Blue
        Get-NetAdapter | Where-Object {$_.Status -eq 'Up'} | ForEach-Object {
            Write-Host ('Adapter: ' + $_.Name + ' (' + $_.InterfaceDescription + ')')
            $ipConfig = Get-NetIPConfiguration -InterfaceIndex $_.InterfaceIndex -ErrorAction SilentlyContinue
            if ($ipConfig.IPv4Address) {
                Write-Host ('  IP Address: ' + $ipConfig.IPv4Address.IPAddress)
                Write-Host ('  Subnet: ' + $ipConfig.IPv4Address.PrefixLength)
                if ($ipConfig.IPv4DefaultGateway) {
                    Write-Host ('  Gateway: ' + $ipConfig.IPv4DefaultGateway.NextHop)
                }
            }
        }
    "
    
    echo.
    echo System information gathering completed.
    echo.
    endlocal
    exit /b 0

:GetDetailedHardware
    echo ┌─ DETAILED HARDWARE ANALYSIS ───────────────────────────────────────┐
    echo │ Analyzing all system hardware components...                         │
    echo └─────────────────────────────────────────────────────────────────────┘
    echo.
    
    powershell -Command "
        # Detailed Hardware Analysis
        Write-Host 'MOTHERBOARD:' -ForegroundColor Red
        $motherboard = Get-CimInstance Win32_BaseBoard
        Write-Host ('Manufacturer: ' + $motherboard.Manufacturer)
        Write-Host ('Product: ' + $motherboard.Product)
        Write-Host ('Version: ' + $motherboard.Version)
        Write-Host ('Serial Number: ' + $motherboard.SerialNumber)
        Write-Host ''
        
        Write-Host 'BIOS/UEFI:' -ForegroundColor DarkRed
        $bios = Get-CimInstance Win32_BIOS
        Write-Host ('Manufacturer: ' + $bios.Manufacturer)
        Write-Host ('Version: ' + $bios.SMBIOSBIOSVersion)
        Write-Host ('Release Date: ' + $bios.ReleaseDate)
        Write-Host ''
        
        Write-Host 'GRAPHICS ADAPTERS:' -ForegroundColor DarkGreen
        Get-CimInstance Win32_VideoController | ForEach-Object {
            Write-Host ('Name: ' + $_.Name)
            Write-Host ('Driver Version: ' + $_.DriverVersion)
            if ($_.AdapterRAM) {
                Write-Host ('Video Memory: ' + [math]::Round($_.AdapterRAM / 1MB, 0) + ' MB')
            }
            Write-Host ''
        }
        
        Write-Host 'AUDIO DEVICES:' -ForegroundColor DarkCyan
        Get-CimInstance Win32_SoundDevice | ForEach-Object {
            Write-Host ('Name: ' + $_.Name)
            Write-Host ('Manufacturer: ' + $_.Manufacturer)
        }
        Write-Host ''
        
        Write-Host 'USB CONTROLLERS:' -ForegroundColor DarkMagenta
        Get-CimInstance Win32_USBController | ForEach-Object {
            Write-Host ('Controller: ' + $_.Name)
        }
    "
    
    exit /b 0