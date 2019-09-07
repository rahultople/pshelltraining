Get-Process | where{$_.name -like "*pad"} | select processname,id | 
Get-Process | select processname,id | export-csv processes.csv -NoTypeInformation

$processdata = Import-Csv .\processes.csv



foreach($process in $processdata){

$id = $process | where {$_.processname -like "*pad"} | select id

try{

Stop-Process -Id

}


catch{

}

}