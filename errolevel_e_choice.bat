@echo off

:escolha
cls
echo:
echo 1) calculadora
echo 2) bloco de notas
echo 3) sair

choice /c "123" /n /m  "Digite aqui>"
goto %errorlevel%

:1
calc
goto escolha


:2
notepad
goto escolha


:3
cls
echo Deseja realmente sair 
::msg /w * "Deseja realmente sair" 
pause >nul
exit
