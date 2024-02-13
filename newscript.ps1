### Configure System ###

## Disable Chat in WIndows 11 *added 20221213
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows" /v ChatIcon /d 3 /t REG_DWORD /f
 
## MDM Auto Enrollment
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\CurrentVersion\MDM" /v AutoEnrollMDM /d 1 /t REG_DWORD /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\CurrentVersion\MDM" /v UseAADCredentialType /d 1 /t REG_DWORD /f
 
## OneDrive
reg add "HKLM\SOFTWARE\Policies\Microsoft\OneDrive" /v SilentAccountConfig /t REG_DWORD /d 1 /f
 
# Disable Edge Desktop Shortcut Creation
reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer" /v DisableEdgeDesktopShortcutCreation /t REG_DWORD /d 1 /f
 
# Disable consumer features 
reg add HKLM\Software\Policies\Microsoft\Windows\CloudContent /v DisableWindowsConsumerFeatures /t REG_DWORD /d 1 /f
 
### Config Default User Profile ###
 reg load HKLM\DEFAULT c:\users\default\ntuser.dat

## Set Windows background to windows spotlight in Windows 11 *added by Ty 20240131
reg add "HKLM\DEFAULT\Software\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" /v "RotatingLockScreenEnabled" /t REG_DWORD /d "1" /f
reg add "HKLM\DEFAULT\Software\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" /v "RotatingLockScreenOverlayEnabled" /t REG_DWORD /d "1" /f
reg add "HKLM\DEFAULT\Software\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" /v "ContentDeliveryAllowed" /t REG_DWORD /d "1" /f
reg add "HKLM\DEFAULT\Software\Microsoft\Windows\CurrentVersion\Lock Screen\Creative" /v "RotatingLockScreenEnabled" /t REG_DWORD /d "1" /f

## Change Taskbar Search box to "Search icon and label" in Windows 11 *added by Ty 20240131
reg add "HKLM\DEFAULT\SOFTWARE\Microsoft\Windows\CurrentVersion\Search" /v ConfigureSearchOnTaskbarMode /t REG_DWORD /d 3 /f

# Hide Taskview button on Taskbar
reg add "HKLM\DEFAULT\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /v ShowTaskViewButton /t REG_DWORD /d 0 /f
 
# Show known file extensions
reg add "HKLM\DEFAULT\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /v HideFileExt /t REG_DWORD /d 0 /f
 
# Change Explorer view to This PC
reg add "HKLM\DEFAULT\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /v LaunchTo /t REG_DWORD /d 1 /f
 
# Disable Item Check Boxes
reg add "HKLM\DEFAULT\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /v AutoCheckSelect /t REG_DWORD /d 0 /f
 
# Accent color on taskbar
reg add "HKLM\DEFAULT\Software\Microsoft\Windows\CurrentVersion\Themes\Personalize" /v ColorPrevalence /t REG_DWORD /d 1 /f
 
# Accent color on title bars
reg add "HKLM\DEFAULT\Software\Microsoft\Windows\DWM" /v ColorPrevalence /t REG_DWORD /d 1 /f
 
reg unload HKLM\DEFAULT
