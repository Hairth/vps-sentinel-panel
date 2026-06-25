$ErrorActionPreference = "Stop"
$url = "https://deploy.workers.cloudflare.com/?url=https%3A%2F%2Fgithub.com%2FHairth%2Fvps-sentinel"
Start-Process $url
Write-Host "Opened Cloudflare Deploy:"
Write-Host $url
