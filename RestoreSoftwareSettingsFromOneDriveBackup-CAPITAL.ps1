## Reviewed by MREID 20221213

ROBOCOPY "$Env:onedrive\Software Settings\Bluebeam\User Settings" "$Env:appdata\Bluebeam Software\Revu" /S /DCOPY:DAT /COPY:DAT /R:0 /W:0 /NFL /NDL
ROBOCOPY "$Env:onedrive\Software Settings\Bluebeam\Program Data" "$Env:programdata\Bluebeam Software\Bluebeam Revu" /S /DCOPY:DAT /COPY:DAT /R:0 /W:0 /NFL /NDL
ROBOCOPY "$Env:onedrive\Software Settings\Outlook Signatures" "$Env:appdata\Microsoft\Signatures" /S /DCOPY:DAT /COPY:DAT /R:0 /W:0 /NFL /NDL
ROBOCOPY "$Env:onedrive\Software Settings\Notepad++\cloud" "$Env:appdata\Notepad++\cloud" /S /DCOPY:DAT /COPY:DAT /R:0 /W:0 /NFL /NDL
ROBOCOPY "$Env:onedrive\Software Settings\FastStone" "$Env:appdata\FastStone" /S /DCOPY:DAT /COPY:DAT /R:0 /W:0 /NFL /NDL
reg import "$Env:onedrive\Software Settings\NewformaSettings.reg"