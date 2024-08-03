Set-PSDebug -Off
Write-Output "Please type the name of the app list you would like to use (It is case sensitive)"
$alist = Read-Host
Write-Output "..."
Powershell.exe -executionpolicy remotesigned -File  "$PSScriptRoot\AppLists\$alist.ps1"

Write-Output "..."
Write-Output "Do you want to update these Apps?"
Write-Output ""...
winget upgrade
Write-Output "..."

function DoseUserWantUpdates {
$USER_INPUT = Read-Host -Prompt "Do you want to update these Apps? (Yes = Y) (No = N)"

IF ($USER_INPUT -eq 'Y') {
    winget upgrade --all
}
elseif ($USER_INPUT -eq 'N') {
    Write-Output "Ok, nothing will be updated"
    exit
}
else {
    DoseUserWantUpdates
}
}

DoseUserWantUpdates