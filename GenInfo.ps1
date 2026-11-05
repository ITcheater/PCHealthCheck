# ==========================================
#  GENERAL INFORMATION
# ==========================================

$generalInfo =[PSCustomObject]@{
            PCName = $null
            UserName = $null
            WinVersion = $null
            ModelProc = $null
            VolumeRAM = $null
            }


$os = Get-CimInstance Win32_OperatingSystem
$cpu = Get-CimInstance Win32_Processor
$computer = Get-CimInstance Win32_ComputerSystem


$computerName = $env:COMPUTERNAME
$userName = $env:USERNAME
$windowsVersion = $os.Name.Split('|')[0]
$modelProcessor = $cpu.Name

$totalRAM = $computer.TotalPhysicalMemory
$totalRAM = [math]::Round($totalRAM / 1GB, 2)


$generalInfo.PCName = $computerName
$generalInfo.UserName = $userName
$generalInfo.WinVersion = $windowsVersion
$generalInfo.ModelProc = $modelProcessor
$generalInfo.VolumeRAM = $totalRAM



