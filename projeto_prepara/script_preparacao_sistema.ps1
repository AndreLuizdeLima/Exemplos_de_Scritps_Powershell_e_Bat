Add-Type -assembly System.Windows.Forms

#se for necessario adm
#if (-not ([Security.Principal.WindowsPrincipal][Security.Principal.WindowsIdentity]::GetCurrent()).IsInRole([Security.Principal.WindowsBuiltInRole]::Administrator)) {
#    $arguments = "& '" + $MyInvocation.MyCommand.Definition + "'"
#    Start-Process powershell -Verb runAs -ArgumentList $arguments
#   exit
#}

$main_pricipal = New-Object System.Windows.Forms.Form
$main_pricipal.Text ='Script de Utilitarios'

$main_pricipal.Width = 750
$main_pricipal.Height = 500
$main_pricipal.AutoSize = $true
$main_pricipal.BackColor = [System.Drawing.Color]::FromArgb(17, 17, 17)

$Label1 = New-Object System.Windows.Forms.Label
$Label1.Text = "Selecione o que deseja executar"
$Label1.Location = New-Object System.Drawing.Point(250,30)
$Label1.AutoSize = $true
$Label1.ForeColor = [System.Drawing.Color]::FromArgb(217,255,255)
$font = New-Object System.Drawing.Font("Arial", 12, [System.Drawing.FontStyle]::Regular)
$Label1.Font = $font

$main_pricipal.Controls.Add($Label1)


$Button1 = New-Object System.Windows.Forms.Button
$Button1.Location = New-Object System.Drawing.Size(275,180)
$Button1.Size = New-Object System.Drawing.Size(200,40)
$Button1.Text = "Configurar"
$Button1.ForeColor = [System.Drawing.Color]::FromArgb(217,255,255)
$Button1.FlatAppearance.BorderColor = [System.Drawing.Color]::FromArgb(217,255,255)
$main_pricipal.Controls.Add($Button1)



$Button1.Add_Click(
{
    $main_config = New-Object System.Windows.Forms.Form
    $main_config.Text ='Configuracoes'

    $main_config.Width = 450    
    $main_config.Height = 300
    $main_config.AutoSize = $true
    $main_config.BackColor = [System.Drawing.Color]::FromArgb(17, 17, 17)  

    

    $main_config.ShowDialog()

}

)


$Button_exit = New-Object System.Windows.Forms.Button
$Button_exit.Location = New-Object System.Drawing.Size(275,240)
$Button_exit.Size = New-Object System.Drawing.Size(200,40)
$Button_exit.Text = "Fechar"
$Button_exit.ForeColor = [System.Drawing.Color]::FromArgb(217,255,255)
$Button_exit.FlatAppearance.BorderColor = [System.Drawing.Color]::FromArgb(217,255,255)
$main_pricipal.Controls.Add($Button_exit)



$Button_exit.Add_Click(
{
    $main_pricipal.Close()
}

)


$main_pricipal.ShowDialog()


## Fim do Form inicio das funcoes

