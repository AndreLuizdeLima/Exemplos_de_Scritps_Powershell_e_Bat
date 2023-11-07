[System.Reflection.Assembly]::LoadWithPartialName("System.Windows.Forms")

# Exibe uma mensagem de notificação em uma janela
[System.Windows.Forms.MessageBox]::Show("Estou rodando!", "Mensagem de Notificação", [System.Windows.Forms.MessageBoxButtons]::OK, [System.Windows.Forms.MessageBoxIcon]::Information)
