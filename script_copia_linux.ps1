Copy-Item -Path "\\wsl.localhost\Ubuntu\home\andre\python_faculdade\*" -Destination  "C:\Users\andre\code\python" -Recurse -Force

Set-Location "C:\Users\andre\code\python"

$data = Get-Date

$outPull = git pull
git add .
$outCommit = git commit -m "Commit automatico Powershell $data"
$outPush = git push

$pastaLog = "C:\Users\andre\code\Log"

$data | Out-File -FilePath "$pastaLog\log.txt" -Append
$outPull | Out-File -FilePath "$pastaLog\log.txt" -Append
$outCommit | Out-File -FilePath "$pastaLog\log.txt" -Append
$outPush | Out-File -FilePath "$pastaLog\log.txt" -Append




