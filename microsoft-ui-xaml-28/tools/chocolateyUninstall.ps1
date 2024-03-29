$ErrorActionPreference = 'Stop'

$softwareName = 'Microsoft.UI.Xaml.2.8'

Get-AppxPackage -AllUsers -Name "$($softwareName)" | Remove-AppxPackage -AllUsers
