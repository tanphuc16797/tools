# Set-ExecutionPolicy RemoteSigned
# Check if the environment variable 'KEEP_AWAKE_PROGRAM_STATUS' is set to 'running'
if ($env:KEEP_AWAKE_PROGRAM_STATUS -eq 'running') {
    Write-Host "Program is currently running."
    exit
}

# Set the 'KEEP_AWAKE_PROGRAM_STATUS' environment variable to 'running'
$env:KEEP_AWAKE_PROGRAM_STATUS = 'running'

$wsh = New-Object -ComObject WScript.Shell
Write-Host "Program running..."
while (1) {
    # Check if the environment variable 'KEEP_AWAKE_PROGRAM_STATUS' is set to 'stopped'
    if ($env:KEEP_AWAKE_PROGRAM_STATUS -eq 'stopped') {
        Write-Host "Program stopped by environment variable."
        exit
    }
    
    # Send Shift+F15    
    $wsh.SendKeys('+{F15}')
    
    Start-Sleep -Seconds 240  # sleep for 4 minutes
}
