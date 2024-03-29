$ErrorActionPreference = 'Stop';

$AppxPackageName = "Microsoft.WindowsTerminal"

Get-AppxProvisionedPackage -Online | Where-Object { $_.PackageName -match "$($AppxPackageName)" } | Remove-AppxProvisionedPackage -Online -AllUsers
Get-AppxPackage -AllUsers -Name "*$($AppxPackageName)*" | Remove-AppxPackage -AllUsers
