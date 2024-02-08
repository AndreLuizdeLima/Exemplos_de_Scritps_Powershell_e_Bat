Add-Type -assembly System.Windows.Forms

$main_form = New-Object System.Windows.Forms.Form
$main_form.Text ='GUI para meu script PowerShell'

$main_form.Width = 600
$main_form.Height = 400
$main_form.AutoSize = $true


$date1 = Get-Date
$Label = New-Object System.Windows.Forms.Label
$Label.Text = $date1
$Label.Location = New-Object System.Drawing.Point(20,60)
$Label.AutoSize = $true
$main_form.Controls.Add($Label)

$Label2 = New-Object System.Windows.Forms.Label
$Label2.Text = "O dia de hoje é:"
$Label2.Location = New-Object System.Drawing.Point(20,30)
$Label2.AutoSize = $true
$main_form.Controls.Add($Label2)


$Button = New-Object System.Windows.Forms.Button
$Button.Location = New-Object System.Drawing.Size(240,180)
$Button.Size = New-Object System.Drawing.Size(120,40)
$Button.Text = "fechar"
$main_form.Controls.Add($Button)



$Button.Add_Click(
{
    $main_form.Close()
}

)

$main_form.ShowDialog()