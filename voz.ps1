using assembly System.Speech

$voz = New-Object System.Speech.Synthesis.SpeechSynthesizer

$voz.Rate = 2

$voz.Volume = 100

$voz.Speak("Ola")