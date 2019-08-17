Get-Service | Get-Member
"Rahul" | Get-Member
#Rahul
"RAHUL".ToLower()
$name= "Rahul"
Write-Host "$name"
Write-Host '$name'
"This is my name '$name'"
'This is my name "$name"'
$name | Get-Member
$myarr=@("Rahul" , "Tople")
$myarr| GM
Get-Member -InputObject $myarr
Get-Command -Noun PSProvider
Get-PSProvider
Get-Item Env:\path
Get-ChildItem Cert:\ -Recurse
New-Item C:\ -Name Demo -ItemType Directory
Get-ChildItem -Path C:\Windows | Out-File -FilePath C:\Demo\files.txt
Get-ChildItem -Path C:\Windows | Export-Csv -Path C:\Demo\file.csv
Get-ChildItem -Path C:\Windows\System32 | Out-File -FilePath C:\Demo\files.txt -Append
$path=read-host
Get-ChildItem -Path $path -Recurse
Get-Help Read-Host
Get-Help Write-Host
Write-Host "Give your path"
$path=Read-Host
Get-ChildItem -Path $path

######Addition#########

Write-Host "Number1"
$number1=Read-Host
Write-Host "Number2"
$number2=Read-Host
#Write-Host "Addition is" $number1 + $number2
$number3=$number1.ToInt32($null)
$number4=$number2.ToInt32($null)
Write-Host "Addition is" ($number3 + $number4)

#####Multiplication######


Write-Host "Number 1"
$num1=Read-Host
Write-Host "Number 2"
$num2=Read-Host
$num3=$num1.ToInt32($null)
$num4=$num2.ToInt32($null)
Write-Host "Multiplication is" ($num3 * $num4)




##############Integer############
[init]$num1=Read-Host


Write-Host "Number 1"
[int]$num1=Read-Host
Write-Host "Number 2"
[int]$num2=Read-Host
Write-Host "Multiplication is" ($num1 * $num2)


##########Conditional Flow#############

Write-Host "Number 1"
[int]$numb1=Read-Host
Write-Host "Number 2"
[int]$numb2=Read-Host

if ($numb1 -gt $numb2)
    {Write-Host "$numb1 is less than $numb2"
        }
        else 
        {Write-Host "$numb1 is greater than $numb2"
        }


#####Multipe Conditional Flow############

$service=Get-Service -Name BITS
If ($service.Status -eq "Stopped")
    {Write-Host "Service is stopped"
    }
    Elseif ($service.Status -eq "Running")
        {Write-Host "Service is running"
        }
        Else 
            {Write-Host "Service is suspended"
            }


#############Switch Conditions#######

Get-Help About-Switch -Online

$service=Get-Service -Name BFEE
switch($service.StartType)
  {
       
       Manual {Write-Host "Service is Manual"}

       Automatic {Write-Host "Service is Automatic"}
       
       Disabled {Write-Host "Service is disabled"}

       Default {Write-Host "Service not found"}

       
       
       }


################Regular Expression + Match condition#################

"Rahul" -match "ra"
"Rahul" -match "^r....$"
"Rahul" -ceq "rahul"

"Dinesh" -match "^d{5}$"

"dddddd" -match "^d{5, }$"



Get-Help about_regularexpression -Online


###########For Loop################




For ($i=0; $i -le 10; $i=$i+2)
    {Write-Host *
    }
    