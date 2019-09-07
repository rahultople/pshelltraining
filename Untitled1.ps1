Start-Transcript
"Santosh"| Get-Member
"Santosh".Length
"santosh".Contains("a")
"santosh".Replace("s","$")
"Santosh".ToLower()
$name="santosh"
"This is my name 'santosh'"

'This is my name "santosh"'
$name
$myarray=@("abhishek", "ntms")
$myarray | gm
Get-Member -InputObject $myarray
Get-PSProvider
Get-Command -Noun "PSProvider"
Get-PSProvider\
Get-ChildItem -path 'C:\' -Recurse
Get-ItemProperty c:\windows
Get-Item c:\windows
Get-Item Env:\path
Get-ChildItem Cert:\ -Recurse
New-Item c:\demo -ItemType Directory
Get-ChildItem C:\Windows | out-file -FilePath "C:\demo\file.txt"
$path=read-host
Get-ChildItem  -path $path
Get-Help read-host -Examples
Write-Host "give u r path" 
$path=read-host
Get-ChildItem


Write-Host "number1"
$number1=Read-host
Write-Host "number2"
$number2=Read-host
Write-Host "Addition is" $number1+$number2
$number3=$number1.ToInt32($null)
$number4=$number2.ToInt32($null)
Write-Host "Addition is" ($number3 + $number4)

##### mutification ########

Write-Host "number5"
$number5=Read-host
Write-Host "number6"
$number6=Read-host
Write-Host "multification is" $number5 * $number6
$number7=$number5.ToInt16($null)
$number8=$number6.ToInt16($null)
Write-Host "muliti is" ($number7 * $number8)

##########################################Init ###########

[init]$number1=Read-host
$number1 | gm 

=======================operators ===============

get-help about-operators

write-host "give number"
[int]$number1=Read-Host
write-host "give number"
[int]$number2=Read-host

if($number1 -lt $number2)
    {
       Write-Host "$number1 is less then $number2" 
       }
       
       else if

       {
       write-host "$number1 is greater than $number2"
       }

       else

       {
       write-host "$number1 is equal to $number2"
       }

       ################################################################

$service = Get-service -Name Bits
       if 
       ($service.Status  -eq "stopped")
        {
          write-host "The Services stop"
          }

          elseif 

          ($service.Start -eq "Running")

          {
           Write-Host "The services running"
           }
           ###############################################################

### Get swtich conditions ########

Get-Help about-switch -Online

$service = Get-service -Name Bits

switch(Write-Host "Status of services")

{

stop {write-host "Service stop"}
start {write-host "service start"}
default{Write-Host "}


"11" -eq 11
##################################################



}

###############################################################

    "Santosh" -match "abd"
"santosh" -match "sa"
"santosh" -match "^sa"
"santosh" -match "$sa"
"santosh" -match "$s"
"santsh" -match "^sh$"
"santosh" -match "^s.....h$"
"santosh" -match "^s......$"

"santosh" -match "^s{2}$""

##################################################################################
get-h

for ($i=0;$i -le 15; $i=$i+1)
{
$i
}

for ($i=0; $i -le 10; $i=$i+2)
{
write-host {*} -Nonewline
}
