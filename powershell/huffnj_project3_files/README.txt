# https://learn.microsoft.com/en-us/powershell/scripting/learn/ps101/00-introduction?view=powershell-7.3
# Thanks to the above link at Microsoft for the powershell documentation and tutorials

# Example ReadMe, list of possible scripts to aid novice helpdesk personnel
# list_installed.ps1  is a working example of a possible script you can build from this list
# list_eventLog.ps1 is another working example, this will save a file the last 100 system events

# Enter a remote PowerShell connection
Enter-PSSession #Enter Computer/Server Name here

# If we wish to run a script saved locally, but on remote pc's/servers
# Replace "Comp1, Comp2" with the computer or server names you wish to work with
Invoke-Command -ComputerName Comp1, Comp2 -FilePath c:\Scripts\Hax.ps1

# Run/install windows updates, many users will forget to if updates aren't set to automatically install
Install-WindowsUpdate -MicrosoftUpdate -AcceptAll

# Need to open an application and the end user is too inept?
Start-Process "Firefox.exe"  # Enter whatever application you need open within the quotations

# Get a list of all installed software (32 and 64 bit) organized by Publisher, Display Name, & Version
$List_Software = @(); $List_Software += Get-ItemProperty HKLM:\Software\Wow6432Node\Microsoft\Windows\CurrentVersion\Uninstall\* |
Select-Object Publisher, DisplayName, DisplayVersion; $List_Software += Get-ItemProperty HKLM:\Software\Microsoft\Windows\CurrentVersion\Uninstall\* |
Select-Object Publisher, DisplayName, DisplayVersion; $List_Software

# Get a list of all connected "Devices"
Get-PnpDevice -PresentOnly

# Get the local users 
Get-LocalUser

# Get the specified Computer Info
Get-ComputerInfo CsName, WindowsProductName, CsDomain, CsProcessors, LogonServer, OsVersion, BiosReleaseDate

# Get last 100 in the eventlog & output to a file in your C: Drive
Get-EventLog -LogName System -Newest 100 | Out-File C:\temp\PowershellOutput.txt

# Want to handle any errors that may occur? Place your code in the "try" braces, with backup code in the "catch"
# braces, should an error occur the "catch" code will run.
try {
    
}
catch {
  { 1:<#Do this if a terminating exception happens#> }
}






























