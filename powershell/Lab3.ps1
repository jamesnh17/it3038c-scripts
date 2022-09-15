function getIP{
    (Get-NetIPAddress).IPv4Address | Select-String "192*"
}

function GDate{
    Get-Date -Format "dddd MM/dd/yyyy"
}


$IP = getIP
$HN = hostname
$HV = $Host.Version.Major
$GD = GDate
$UN = $env:USERNAME
$Body = "This machine's IP is $IP. User is $UN. Hostname is $HN. PowerShell Version $HV. Today's Date is $GD."
#Write-Host($Body)

$Body | Out-File C:\Lab3.txt