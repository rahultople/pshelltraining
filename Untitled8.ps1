Start-Transcript

Enable-psremoting

New-NetFirewallRule -DisplayName "Windows Remote Management (HTTPS-In)" -Name "Windows Remote Management (HTTPS-In)" -Profile Any -LocalPort 5986 -Protocol TCP

$Cert = New-SelfSignedCertificate -CertstoreLocation Cert:\LocalMachine\My -DnsName "Win-Rahul"

Export-Certificate  -Cert $Cert -FilePath "C:\demo"

New-Item -Path WSMan:\LocalHost\Listener -Transport HTTPS -Address * -CertificateThumbPrint $Cert.Thumbprint –Force

Set-Item wsman:\localhost\Client\TrustedHosts -Value 192.168.1.52 -Concatenate -Force

Set-NetConnectionProfile -NetworkCategory Private



$Cert = New-SelfSignedCertificate -CertstoreLocation Cert:\LocalMachine\My -DnsName "Win-Rahul"

$session= New-PSSessionOption -SkipCACheck -SkipCNCheck
Enter-PSSession -ComputerName 192.168.1.35 -Port 5986 -UseSSL -SessionOption $session -Credential $cred

$cred=Get-Credential


Get-Help Enter-PSSession
    
ping 192.168.1.52

Get-Help New-PSSessionOption 

ipconfig

compmgmt.msc

Rename-Item -Path C:\Rahul_New -NewName Rahul

exit
Get-PSSession

Enter-PSSession $winntms
$existsession = Get-PSSession

$winntms=New-PSSession -ComputerName 192.168.1.52 -Port 5986 -UseSSL -SessionOption $session -Credential $cred

$existsession

get-help Disconnect-PSSession

Disconnect-PSSession -Session $existsession.Id{19}

Exit
Get-PSSession | gm

$user = "Administrator"
$Password = "ntms321#" | ConvertTo-SecureString -AsPlainText -Force
$credentials = New-Object -TypeName System.Management.Automation.PSCredential -ArgumentList "$user, $Password" 


$session= New-PSSessionOption -SkipCACheck -SkipCNCheck
Enter-PSSession -ComputerName 192.168.1.52 -Port 5986 -UseSSL -SessionOption $session -Credential $cred

$cred=Get-Credential
$csv=Import-Csv -Path C:\users.csv
Foreach($user in $csv)

###Import CSV
$computer= Import-Csv -Path C:\Computer.csv
$services= Import-Csv -Path C:\services.csv
#### Get Status of service
Foreach($service in $services)
{
    If{
    }


}
