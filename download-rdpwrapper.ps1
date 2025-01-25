# Define the URL and destination path
$url = "https://github.com/sebaxakerhtc/rdpwrap/releases/download/v1.8.9.9/RDPW_Installer.exe"
$destination = "C:\Program Files\RDP Wrapper\RDPW_Installer.exe"

# Create the destination directory if it doesn't exist
if (-not (Test-Path -Path "C:\Program Files\RDP Wrapper")) {
    New-Item -ItemType Directory -Path "C:\Program Files\RDP Wrapper"
}

# Download the file
Invoke-WebRequest -Uri $url -OutFile $destination

Write-Output "Download completed: $destination"