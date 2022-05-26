$oemkey = ((Get-WmiObject -query ‘select * from SoftwareLicensingService’).OA3xOriginalProductKey).ToString()
slmgr /ipk $oemkey
slmgr /ato