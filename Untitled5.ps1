$names = "agandh","dinesh","sachin"

foreach($name in $names){

Try {

stop-$name

}

catch{



$($_.exception.message) | Out-File errorname.txt -Append


}

}
