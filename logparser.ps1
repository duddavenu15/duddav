$logfile = "C:\Users\duddav\Desktop\log.txt"
Get-Content $logfile | Where-Object {$_ -like "*ERROR*"} | ForEach-Object {
$ip = $_.ToString().Split()[0]
$msg = $_.ToString().Split()[2]
Write-Output "$ip  $msg"

}