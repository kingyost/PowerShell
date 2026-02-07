#takes an imput, assigns to variable and sets the text color.

$userName = Read-Host -Prompt "Please enter your name"

Write-Host "Hello, $userName! Welcome to Powershell." -ForegroundColor Green
