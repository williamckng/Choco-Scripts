$ErrorActionPreference = 'Stop'

$softwareName = 'Microsoft.VCLibs.140.00'

Get-AppxPackage -AllUsers -Name "$($softwareName)" | Remove-AppxPackage -AllUsers
