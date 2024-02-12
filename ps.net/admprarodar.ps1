function MinhaFuncao {
    # Coloque o código da sua função aqui
    Write-Host "Esta é a minha função que requer privilégios de administrador."
    Read-Host
}

if (-not ([Security.Principal.WindowsPrincipal][Security.Principal.WindowsIdentity]::GetCurrent()).IsInRole([Security.Principal.WindowsBuiltInRole]::Administrator)) {
    $arguments = "& '" + $MyInvocation.MyCommand.Definition + "'"
    Start-Process powershell -Verb runAs -ArgumentList $arguments
    Break
} else {
    MinhaFuncao
}