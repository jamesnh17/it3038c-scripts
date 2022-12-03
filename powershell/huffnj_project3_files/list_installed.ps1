try {
    $List_Software = @(); $List_Software += Get-ItemProperty HKLM:\Software\Wow6432Node\Microsoft\Windows\CurrentVersion\Uninstall\* |
    Select-Object Publisher, DisplayName, DisplayVersion; $List_Software += Get-ItemProperty HKLM:\Software\Microsoft\Windows\CurrentVersion\Uninstall\* |
    Select-Object Publisher, DisplayName, DisplayVersion; $List_Software
}
catch {
    Write-Host "Something went wrong with your request, please make sure you are running as an admin and within the correct directory" 
}
