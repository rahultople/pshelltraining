$SERVICES=@("bITS","ABC","VMTOOLS")
foreach($SERVICE IN $SERVICES) {
Stop-Service $SERVICES -EA SilentlyContinue -ErrorVariable STOPSERVICE
IF($STOPSERVICE -EQ $null ){
 
 $service | OUT-FILE SUCCESSFUL.TXT -Append

 }

ELSE{

$SERVICE | OUT-FILE ERROR.TXT -Append

}

}