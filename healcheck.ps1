$endpoint = ""
# register an endpoint at https://healthchecks.io/
# ex: $endpoint = "https://hc-ping.com/a05b1dac-26cd-4a2f-bf0d-f446d8ef8538"
while ($true) {
    try {
        Invoke-WebRequest -Uri $endpoint -Method Head -ErrorAction Stop
        Write-Host "Ping successful at $(Get-Date)"
    } catch {
        Write-Host "Ping failed at $(Get-Date): $_"
    }
    Start-Sleep -Seconds 180  # Sleep for 3 minutes
}
