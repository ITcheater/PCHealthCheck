$projectRoot = $PSScriptRoot

$reportFolder = Join-Path $projectRoot "Reports"

if (-not (Test-Path $reportFolder)) {
    New-Item -Path $reportFolder -ItemType Directory
}

$reportPath = Join-Path $reportFolder "PSHealthCheck.txt" 


$report = @(
"========================================"
"               PC HEALTH CHECK          "
"========================================"
""
"Computer Name   : $($generalInfo.PCName)"
"User Name       : $($generalInfo.UserName)"
"Windows Version : $($generalInfo.WinVersion)"
"Processor Model : $($generalInfo.ModelProc)"
"Total RAM       : $($generalInfo.VolumeRAM)"
"")

Set-Content -Path $reportPath -Value $report