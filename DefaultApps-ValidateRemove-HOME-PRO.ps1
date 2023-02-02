# White list of appx packages to keep installed
$WhiteListedApps = New-Object -TypeName System.Collections.ArrayList
$WhiteListedApps.AddRange(@(


))

$AppArrayList = Get-AppxProvisionedPackage -Online | Select-Object -ExpandProperty DisplayName
foreach ($App in $AppArrayList) {
    if (($App -notin $WhiteListedApps)) {
        $AppPackageName = Get-AppxPackage -Name $App | Select-Object -ExpandProperty Name -First 1
        Write-Output -InputObject $AppPackageName
    }
}

# White list of Features On Demand V2 packages
$WhiteListOnDemand = "NetFX3|DirectX|Tools.DeveloperMode.Core|Language|InternetExplorer|ContactSupport|OneCoreUAP|WindowsMediaPlayer|Hello.Face|Notepad|MSPaint|PowerShell.ISE|ShellComponents|Rsat|QuickAssist"
$OnDemandFeatures = Get-WindowsCapability -Online -LimitAccess -ErrorAction Stop | Where-Object { $_.Name -notmatch $WhiteListOnDemand -and $_.State -like "Installed" } | Select-Object -ExpandProperty Name
Write-Output -InputObject $OnDemandFeatures