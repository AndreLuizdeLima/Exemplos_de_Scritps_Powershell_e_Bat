using assembly System.Speech

$Assunto = Read-Host "informe o que deve ser falado"
$voz = New-Object System.Speech.Synthesis.SpeechSynthesizer

$voz.Rate = 2

$voz.Volume = 100

$voz.Speak($Assunto)

