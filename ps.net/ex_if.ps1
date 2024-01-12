$escolha = Read-Host "escolha (s) ou (n)"

if ($escolha -eq "s"){
    write-host "sim"
} elseif ($escolha -eq "n"){
    write-host "não"
} else {
    Write-Host "errado"
}

