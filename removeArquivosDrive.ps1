Write-host "==============  Programa de exclusão de arquivos do Drive =============="

[string]$localFile = "G:\Meu Drive\widesys_sharX" ;

$conditionStop = $true

Set-Location $localFile;

$fileFolder = Get-ChildItem -Path $localFile -File -Recurse;

$dateNow = get-date;

$dateRemove = $dateNow.AddDays(-90)

while($conditionStop){

    write-host
    write-host "( 1 ) Listar arquivos a serem excluidos"
    write-host "( 2 ) Excluir os arquivos listados"
    write-host "( 3 ) Sair"
    write-host
    
    $choice = Read-Host "Selecione "
    
    if ($choice -eq 3) {
        $conditionStop = $false   
    }

    if  ($choice -eq 1) {
    
        Clear-Host

        Write-host "============== Arquivos Encontrados =============="
        Write-host

        foreach ($file in $fileFolder){

            if ($file.CreationTime -lt $dateRemove -and $file.Extension -eq ".mp4"){
                write-host "Arquivo Encontrado: " $file.Name " " $file.CreationTime       
            }
        }

        Write-host
        Write-host "=================================================="

    }

    if  ($choice -eq 2) {

        Clear-Host

        Write-host "============== Arquivos Removidos =============="
        Write-host

        foreach ($file in $fileFolder){

            if ($file.CreationTime -lt $dateRemove -and $file.Extension -eq ".mp4"){
                write-host "Arquivo Excluido: " $file.Name " " $file.CreationTime       
                Remove $file
            }
        }

        Write-host
        Write-host "================================================="

    }


}



