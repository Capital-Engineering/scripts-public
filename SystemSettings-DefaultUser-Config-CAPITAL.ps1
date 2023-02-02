## Reviewed by MREID 20221213

### Configure System

## Disable Chat in WIndows 11 *added 20221213
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows" /v ChatIcon /d 3 /t REG_DWORD /f

##MDM Auto Enrollment
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\CurrentVersion\MDM" /v AutoEnrollMDM /d 1 /t REG_DWORD /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\CurrentVersion\MDM" /v UseAADCredentialType /d 1 /t REG_DWORD /f

## OneDrive
reg add "HKLM\SOFTWARE\Policies\Microsoft\OneDrive" /v SilentAccountConfig /t REG_DWORD /d 1 /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\OneDrive" /v KFMSilentOptIn /t REG_SZ /d f0749fe6-9b92-479a-880b-7ee784824fd7 /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\OneDrive" /v KFMBlockOptOut /t REG_DWORD /d 1 /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\OneDrive" /v KFMBlockOptIn /t REG_DWORD /d 1 /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\OneDrive" /v FilesOnDemandEnabled /t REG_DWORD /d 1 /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\OneDrive" /v EnableAutomaticUploadBandwidthManagement /t REG_DWORD /d 1 /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\OneDrive" /v DisableFirstDeleteDialog /t REG_DWORD /d 1 /f

# Disable Edge Desktop Shortcut Creation
reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer" /v DisableEdgeDesktopShortcutCreation /t REG_DWORD /d 1 /f

# Prevent the First Run webpage from opening on Microsoft Edge
reg add "HKLM\SOFTWARE\Policies\Microsoft\MicrosoftEdge\Main" /v PreventFirstRunPage /t REG_DWORD /d 1 /f

# Prevent running First Run wizard on Internet Explorer
reg add "HKLM\SOFTWARE\Policies\Microsoft\Internet Explorer\Main" /v DisableFirstRunCustomize /t REG_DWORD /d 1 /f

# Do not show the 'new application installed' notification
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\Explorer" /v NoNewAppAlert /t REG_DWORD /d 1 /f

# Disable consumer features (also in autouattend.xml)
reg add HKLM\Software\Policies\Microsoft\Windows\CloudContent /v DisableWindowsConsumerFeatures /t REG_DWORD /d 1 /f

# Disable Cortana Voice during OOBE (also in autouattend.xml)
reg add HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\OOBE /v DisableVoice /d 1 /t REG_DWORD /f


### Config Default User Profile

reg load HKLM\DEFAULT c:\users\default\ntuser.dat

## Configure Taskbar

# Hide Taskview button on Taskbar
reg add "HKLM\DEFAULT\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /v ShowTaskViewButton /t REG_DWORD /d 0 /f

# Hide Cortana icon
reg add "HKLM\DEFAULT\SOFTWARE\Microsoft\Windows\CurrentVersion\Search" /v SearchboxTaskbarMode /t REG_DWORD /d 0 /f

# Combine icons only when taskbar is full
reg add "HKLM\DEFAULT\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /v TaskbarGlomLevel /t REG_DWORD /d 1 /f

# Show Taskbar on all screens
reg add "HKLM\DEFAULT\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /v MMTaskbarEnabled /t REG_DWORD /d 1 /f

# Combine icons only when taskbar is full on all screens
reg add "HKLM\DEFAULT\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /v MMTaskbarMode /t REG_DWORD /d 1 /f

# Hide People button from Taskbar
reg add "HKLM\DEFAULT\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Advanced\People" /v PeopleBand /t REG_DWORD /d 0 /f

# Show all system tray icons
reg add "HKLM\DEFAULT\Software\Microsoft\Windows\CurrentVersion\Explorer" /v EnableAutoTray /t REG_DWORD /d 0 /f

# Hide Windows Ink Workspace Button
reg add "HKLM\DEFAULT\SOFTWARE\Microsoft\Windows\CurrentVersion\PenWorkspace" /v PenWorkspaceButtonDesiredVisibility /t REG_DWORD /d 0 /f

# Turn off News and Interests
reg add "HKLM\DEFAULT\Software\Microsoft\Windows\CurrentVersion\Feeds" /v ShellFeedsTaskbarViewMode /t REG_DWORD /d 2 /f

## Configure File Explorer
 
# Show known file extensions
reg add "HKLM\DEFAULT\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /v HideFileExt /t REG_DWORD /d 0 /f

# Change Explorer view to This PC
reg add "HKLM\DEFAULT\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /v LaunchTo /t REG_DWORD /d 1 /f

# Disable Item Check Boxes
reg add "HKLM\DEFAULT\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /v AutoCheckSelect /t REG_DWORD /d 0 /f

## Configure Start Menu
 
# Disable most used apps from appearing in the start menu
reg add "HKLM\DEFAULT\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /v Start_TrackProgs /t REG_DWORD /d 0 /f

# Disable suggestions
reg add "HKLM\DEFAULT\SOFTWARE\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" /v SystemPaneSuggestionsEnabled /t REG_DWORD /d 0 /f
reg add "HKLM\DEFAULT\SOFTWARE\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" /v SubscribedContent-338388Enabled /t REG_DWORD /d 0 /f
reg add "HKLM\DEFAULT\SOFTWARE\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" /v SubscribedContent-338389Enabled /t REG_DWORD /d 0 /f

## Configure System
 
# Disable Game DVR
reg add "HKLM\DEFAULT\System\GameConfigStore" /v GameDVR_Enabled /t REG_DWORD /d 0 /f
reg add "HKLM\DEFAULT\SOFTWARE\Microsoft\Windows\CurrentVersion\GameDVR" /v AppCaptureEnabled /t REG_DWORD /d 0 /f

## Configure Background and Display

# Accent color on taskbar
reg add "HKLM\DEFAULT\Software\Microsoft\Windows\CurrentVersion\Themes\Personalize" /v ColorPrevalence /t REG_DWORD /d 1 /f

# Accent color on title bars
reg add "HKLM\DEFAULT\Software\Microsoft\Windows\DWM" /v ColorPrevalence /t REG_DWORD /d 1 /f

reg unload HKLM\DEFAULT