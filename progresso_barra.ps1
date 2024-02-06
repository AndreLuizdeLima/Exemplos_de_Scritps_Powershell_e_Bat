for($i = 0; $i -le 100; $i++){
    Write-Progress -Activity "Aguarde..." -Status "progresso:" -PercentComplete $i
    Start-Sleep -Milliseconds 100
}