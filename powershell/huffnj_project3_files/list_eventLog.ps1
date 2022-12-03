try {
    Get-EventLog -LogName System -Newest 100 | Out-File C:\temp\eventlog.txt
}
catch {
    Write-Host "Something went wrong with your request, please make sure you are running as an admin, 
    within the correct directory, and you have created a 'temp' folder in your 'c:' drive"
}
