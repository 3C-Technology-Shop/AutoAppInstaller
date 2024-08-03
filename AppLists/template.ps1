Set-PSDebug -Off

# [AppName]
Write-Output "Installing [AppName]"
timeout /t 3 /nobreak
winget install [AppID] --accept-package-agreements --accept-source-agreements -s [Source]