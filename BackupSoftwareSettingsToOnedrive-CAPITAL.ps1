## Reviewed by MREID 20221213

ROBOCOPY "$Env:programdata\Bluebeam Software\Bluebeam Revu" "$Env:onedrive\Software Settings\Bluebeam\Program Data" /S /DCOPY:DAT /COPY:DAT /R:0 /W:0
ROBOCOPY "$Env:appdata\Bluebeam Software\Revu" "$Env:onedrive\Software Settings\Bluebeam\User Settings" /S /DCOPY:DAT /COPY:DAT /R:0 /W:0
ROBOCOPY "$Env:appdata\Microsoft\Signatures" "$Env:onedrive\Software Settings\Outlook Signatures" /S /DCOPY:DAT /COPY:DAT /R:0 /W:0
ROBOCOPY "$Env:appdata\Notepad++" "$Env:onedrive\Software Settings\Notepad++" /S /DCOPY:DAT /COPY:DAT /R:0 /W:0
ROBOCOPY "$Env:appdata\FastStone" "$Env:onedrive\Software Settings\FastStone" /S /DCOPY:DAT /COPY:DAT /R:0 /W:0
reg export HKCU\SOFTWARE\Newforma\ "$Env:onedrive\Software Settings\NewformaSettings.reg"