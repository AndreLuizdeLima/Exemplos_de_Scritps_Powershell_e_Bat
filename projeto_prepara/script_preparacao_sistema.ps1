Add-Type -assembly System.Windows.Forms

if (-not ([Security.Principal.WindowsPrincipal][Security.Principal.WindowsIdentity]::GetCurrent()).IsInRole([Security.Principal.WindowsBuiltInRole]::Administrator)) {
    $arguments = "& '" + $MyInvocation.MyCommand.Definition + "'"
    Start-Process powershell -Verb runAs -ArgumentList $arguments
    exit
}

$main_form = New-Object System.Windows.Forms.Form
$main_form.Text ='Script de Utilitarios'

$main_form.Width = 900
$main_form.Height = 600
$main_form.AutoSize = $true
$main_form.BackColor = [System.Drawing.Color]::FromArgb(17, 17, 17)

$Label1 = New-Object System.Windows.Forms.Label
$Label1.Text = "Selecione o que deseja executar"
$Label1.Location = New-Object System.Drawing.Point(250,30)
$Label1.AutoSize = $true
$Label1.ForeColor = [System.Drawing.Color]::FromArgb(217,255,255)
$font = New-Object System.Drawing.Font("Arial", 12, [System.Drawing.FontStyle]::Regular)
$Label1.Font = $font

$main_form.Controls.Add($Label1)


$Button1 = New-Object System.Windows.Forms.Button
$Button1.Location = New-Object System.Drawing.Size(250,180)
$Button1.Size = New-Object System.Drawing.Size(400,40)
$Button1.Text = "fechar"
$Button1.ForeColor = [System.Drawing.Color]::FromArgb(217,255,255)
$Button1.FlatAppearance.BorderColor = [System.Drawing.Color]::FromArgb(217,255,255)
$main_form.Controls.Add($Button1)



$Button1.Add_Click(
{
    $main_form.Close()
}

)


$Button2 = New-Object System.Windows.Forms.Button
$Button2.Location = New-Object System.Drawing.Size(250,240)
$Button2.Size = New-Object System.Drawing.Size(400,40)
$Button2.Text = "fechar"
$Button2.ForeColor = [System.Drawing.Color]::FromArgb(217,255,255)
$Button2.FlatAppearance.BorderColor = [System.Drawing.Color]::FromArgb(217,255,255)
$main_form.Controls.Add($Button2)



$Button2.Add_Click(
{
    
}

)


$main_form.ShowDialog()


## Fim do Form inicio das funcoes

