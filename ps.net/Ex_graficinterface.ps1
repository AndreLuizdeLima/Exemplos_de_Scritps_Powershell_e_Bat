Add-Type -AssemblyName System.Windows.Forms
Add-Type -AssemblyName System.Drawing

# Crie um formulário
$form = New-Object System.Windows.Forms.Form
$form.Text = "Exemplo de Interface Gráfica em PowerShell"
$form.Size = New-Object System.Drawing.Size(400, 200)
$form.StartPosition = "CenterScreen"

# Crie um rótulo
$label = New-Object System.Windows.Forms.Label
$label.Location = New-Object System.Drawing.Point(10, 20)
$label.Size = New-Object System.Drawing.Size(380, 20)
$label.Text = "Digite seu nome:"
$form.Controls.Add($label)

# Crie uma caixa de texto
$textbox = New-Object System.Windows.Forms.TextBox
$textbox.Location = New-Object System.Drawing.Point(10, 50)
$textbox.Size = New-Object System.Drawing.Size(380, 20)
$form.Controls.Add($textbox)

# Crie um botão
$button = New-Object System.Windows.Forms.Button
$button.Location = New-Object System.Drawing.Point(150, 90)
$button.Size = New-Object System.Drawing.Size(100, 30)
$button.Text = "Clique Aqui"
$form.Controls.Add($button)

# Adicione um evento de clique ao botão
$button.Add_Click({
    $nome = $textbox.Text
    [System.Windows.Forms.MessageBox]::Show("Olá, $nome!", "Mensagem")
})

# Exiba o formulário
$form.ShowDialog() | Out-Null
