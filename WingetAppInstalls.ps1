## Reviewed by MREID 20221213

winget install Adobe.Acrobat.Reader.64-bit --exact --silent --accept-package-agreements --accept-source-agreements
winget install Dell.CommandUpdate.Universal --exact --silent --accept-package-agreements --accept-source-agreements
winget install FastStone.Capture --exact --silent --accept-package-agreements --accept-source-agreements
winget install FastStone.Viewer --exact --silent --accept-package-agreements --accept-source-agreements
winget install GitHub.GitHubDesktop --exact --silent --accept-package-agreements --accept-source-agreements
winget install Google.Chrome --exact --silent --accept-package-agreements --accept-source-agreements
winget install Microsoft.Office --exact --silent --accept-package-agreements --accept-source-agreements
winget install Microsoft.WindowsTerminal --exact --silent --accept-package-agreements --accept-source-agreements
winget install Notepad++.Notepad++ --exact --silent --accept-package-agreements --accept-source-agreements
winget install PuTTY.PuTTY --exact --silent --accept-package-agreements --accept-source-agreements
winget install Splashtop.SplashtopBusiness --exact --silent --accept-package-agreements --accept-source-agreements
winget install ZeroTier.ZeroTierOne --exact --silent --accept-package-agreements --accept-source-agreements
winget install mRemoteNG.mRemoteNG --exact --silent --accept-package-agreements --accept-source-agreements



New-Alias edge "C:\Program Files (x86)\Microsoft\Edge\Application\msedge.exe"
New-Alias edit "C:\Program Files\Notepad++\notepad++.exe"



::#ZeroTier Join TR-RD
:: MARK-3660 fe80::79f4:97da:17cd:6593%18
zerotier-cli join af78bf9436327e81