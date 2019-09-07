class Admailbox
{
[string]$name
[int]$totalmailboxsize

}

$admailboxvalue = New-Object -TypeName admailbox

                =[admailbox]::new()
                

                $admailboxvalue | gm

                $admailboxvalue.name = "agandh" 
                $admailboxvalue.totalmailboxsize = "10"
                $admailboxvalue.totalmailboxsize | Export-Csv "totalmailbox.csv"



                $name = "agandh"
                $name[0]



                $a = 1,2,6,12,13,24,26,5

                $a | Sort-Object




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

                $mycalc.firstnumber = 1
                $mycalc.secondnumber = 5
                $mycalc



                [int]multiplication()
                {

                return $this.firstnumber * $this.secondnumber
                }


                }


                $mycalc =New-Object -TypeName Mycalculator

                $mycalc.firstnumber = 1
                $mycalc.secondnumber = 5
                $mycalc