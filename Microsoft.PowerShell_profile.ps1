oh-my-posh --init --shell pwsh --config "$env:POSH_THEMES_PATH/nicolasgranata.shell.omp.json" | Invoke-Expression

if (Get-Module -ListAvailable -Name Terminal-Icons) {
    Import-Module -Name Terminal-Icons
} 
else {
    Write-Host "Terminal-Icons Module does not exist" -ForegroundColor Red
    Write-Host "Installing Terminal-Icons Module..." -ForegroundColor Green
    Install-Module -Name Terminal-Icons -Repository PSGallery -Scope CurrentUser
}