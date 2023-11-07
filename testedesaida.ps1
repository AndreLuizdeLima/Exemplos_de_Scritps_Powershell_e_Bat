Write-Warning "Aviso: O arquivo de configuração não foi encontrado."

Write-Error "Ocorreu um erro durante a execução do script."

"Isso é uma saída de exemplo."
Write-Output "Outra saída de exemplo."

Write-Host "Isso é uma mensagem de exemplo."

Write-Host "A" -NoNewline -ForegroundColor Cyan; Write-Host "n"-NoNewline -ForegroundColor DarkMagenta;Write-Host "d" -NoNewline -ForegroundColor red;Write-Host "r" -NoNewline -ForegroundColor Yellow;Write-Host "e" -NoNewline -ForegroundColor Green;

$OutputEncoding = [System.Text.Encoding]::UTF8