Add-Type -assembly System.Windows.Forms

$main_form = New-Object System.Windows.Forms.Form
$main_form.Text ='Script de Preparacao de Ambiente'

$main_form.Width = 900
$main_form.Height = 600
$main_form.AutoSize = $true
$main_form.BackColor = [System.Drawing.Color]::FromArgb(17, 17, 17)

$Label1 = New-Object System.Windows.Forms.Label
$Label1.Text = "Monitoramente do Sistema"
$Label1.Location = New-Object System.Drawing.Point(20,30)
$Label1.AutoSize = $true
$Label1.ForeColor = [System.Drawing.Color]::FromArgb(217,255,255)
$font = New-Object System.Drawing.Font("Arial", 12, [System.Drawing.FontStyle]::Regular)
$Label1.Font = $font

$main_form.Controls.Add($Label1)


$main_form.ShowDialog()