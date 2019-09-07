class mycalculator
                {
                [int]$firstnumber
                [int]$secondnumber

                [int]add()

                {

                return $this.firstnumber + $this.secondnumber
                }


                }


                $mycalc =New-Object -TypeName Mycalculator

                $mycalc.firstnumber = 8
                $mycalc.secondnumber = 9
                $mycalc.add()





$Error
$Error[0].InvocationInfo
$Error[0].InvocationInfo.Line
$Error[0].Exception
$Error[0].CategoryInfo.Reason
$Error[0].CategoryInfo
$Error[0].CategoryInfo.
$ErrorActionPreference



Stop-Service -Name BITSASD -ErrorAction Stop -ErrorVariable ABCERROR
$ABCERROR | GM
$ABCERROR


$SERVICES=@("bITS","ABC","VMTOOLS")
foreach($SERVICE IN $SERVICES) {
Stop-Service $SERVICES -EA Continue -ErrorVariable STOPSERVICE
IF($STOPSERVICE -EQ $null )
 $SERVICE | OUT-FILE SUCCESSFUL.TXT

ELSE{

$SERVICE | OUT-FILE ERROR.TXT

}

}

