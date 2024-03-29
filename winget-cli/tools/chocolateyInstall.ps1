$ErrorActionPreference = 'Stop';

$softwareName = 'Microsoft Winget'
$fileName     = 'Microsoft.DesktopAppInstaller_8wekyb3d8bbwe.msixbundle'
$fileLocation = "\\192.168.100.1\DS-Create$\Applications\$softwareName"
$licenseName  = '30fe89a9836a4cfbbd3fedce72a58680_License1.xml'

Add-AppxProvisionedPackage -Online -PackagePath "$fileLocation\$fileName" -LicensePath "$fileLocation\$licenseName" -Regions All
