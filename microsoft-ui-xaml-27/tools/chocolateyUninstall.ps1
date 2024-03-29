$ErrorActionPreference = 'Stop'

$softwareName = 'Microsoft.UI.Xaml.2.7'

Get-AppxPackage -AllUsers -Name "$($softwareName)" | Remove-AppxPackage -AllUsers
