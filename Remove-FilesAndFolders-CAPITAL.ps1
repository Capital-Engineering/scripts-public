## Reviewed by MREID 20221213

## Test create folder command New-Item -Path "C:\ProgramData\Microsoft\Windows\Start Menu\Programs\AutoCAD 2022 - English" -ItemType directory

Remove-Item -Path "C:\ProgramData\Microsoft\Windows\Start Menu\Programs\AutoCAD 2022 - English" -Recurse
Remove-Item -Path "C:\ProgramData\Microsoft\Windows\Start Menu\Programs\Autodesk\AutoCAD 2016 - English" -Recurse
Remove-Item -Path "C:\ProgramData\Microsoft\Windows\Start Menu\Programs\Autodesk\AutoCAD 2016 - English.lnk" -Recurse
Remove-Item -Path "C:\ProgramData\Microsoft\Windows\Start Menu\Programs\Bluebeam Software\Revu 20\*32*"