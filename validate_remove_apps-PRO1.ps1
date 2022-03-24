# White list of appx packages to keep installed
$WhiteListedApps = New-Object -TypeName System.Collections.ArrayList
$WhiteListedApps.AddRange(@(

    "Microsoft.CompanyPortal",
    "Microsoft.DesktopAppInstaller",
    "Microsoft.HEIFImageExtension",
    "Microsoft.HEVCVideoExtension",
    "Microsoft.MPEG2VideoExtension",
    "Microsoft.MSPaint",
    "Microsoft.Microsoft3DViewer",
    "Microsoft.MicrosoftEdge.Stable",
    "Microsoft.MicrosoftOfficeHub",
    "Microsoft.MicrosoftStickyNotes",
    "Microsoft.ScreenSketch",
    "Microsoft.StorePurchaseApp",
    "Microsoft.VCLibs.140.00",
    "Microsoft.VP9VideoExtensions",
    "Microsoft.WebMediaExtensions",
    "Microsoft.WebpImageExtension",
    "Microsoft.Windows.Photos",
    "Microsoft.Windows.ShellExperienceHost",
    "Microsoft.WindowsCalculator",
    "Microsoft.WindowsCamera",
    "Microsoft.WindowsStore"

    # "AppUp.IntelGraphicsExperience",
    # "AppUp.IntelManagementandSecurityStatus",
    # "AppUp.IntelOptaneMemoryandStorageManagement",
    # "AppUp.ThunderboltControlCenter",
    # "DellInc.DellCommandUpdate",
    # "DellInc.DellDigitalDelivery",
    # "DellInc.DellOptimizer",
    # "DellInc.DellPowerManager",
    # "DellInc.DellSupportAssistforPCs",
    # "DellInc.PartnerPromo",
    # "Microsoft.549981C3F5F10",
    # "Microsoft.BingWeather",
    # "Microsoft.GetHelp",
    # "Microsoft.Getstarted",
    # "Microsoft.MicrosoftSolitaireCollection",
    # "Microsoft.MixedReality.Portal",
    # "Microsoft.Office.OneNote",
    # "Microsoft.Outlook.DesktopIntegrationServicess",
    # "Microsoft.People",
    # "Microsoft.SkypeApp",
    # "Microsoft.Wallet",
    # "Microsoft.WindowsAlarms",
    # "Microsoft.WindowsFeedbackHub",
    # "Microsoft.WindowsMaps",
    # "Microsoft.WindowsSoundRecorder",
    # "Microsoft.Xbox.TCUI",
    # "Microsoft.XboxApp",
    # "Microsoft.XboxGameOverlay",
    # "Microsoft.XboxGamingOverlay",
    # "Microsoft.XboxIdentityProvider",
    # "Microsoft.XboxSpeechToTextOverlay",
    # "Microsoft.YourPhone",
    # "Microsoft.ZuneMusic",
    # "Microsoft.ZuneVideo",
    # "microsoft.windowscommunicationsapps",

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