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
$Body = "This machine's IP is $IP. User is Administrator. Hostname is $HN. PowerShell Version $HV. Today's Date is $GD."

$Body | Out-File C:\Lab3.txt