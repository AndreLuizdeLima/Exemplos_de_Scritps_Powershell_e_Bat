while ($true) {
    Write-Host "Iniciando monitoramento"

    $escolha = Read-Host "Deseja ver todos os programas? ([S] sim / [N] não / [E] exit)"

    if ($escolha -eq 'S') {
        Get-Process
    } elseif ($escolha -eq 'N') {
        $process = Read-Host "Informe o nome do programa"
        Get-Process -Name $process
        break  # Sair do loop se a escolha for 'N'
    }elseif($escolha -eq 'E') {
        break
    } else {
        Write-Error "Informe uma escolha válida"
    }
}


$null = $Host.UI.RawUI.ReadKey('NoEcho,IncludeKeyDown').Key
