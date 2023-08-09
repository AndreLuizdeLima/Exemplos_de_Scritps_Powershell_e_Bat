@echo off
color 02
mode 50,10

title %date:/=-% -  %time:~0,5%

set /p "nome=seu nome: "
set /p "sobrenome=seu sobrenome: "
set /p "idade=sua idade: "
set /p "sexo=seu sexo: "

set nome_com=%nome% %sobrenome%
cls
echo.
echo Nome:              %nome%
echo Sobrenome:         %sobrenome%
echo Completo:          %nome_com%
echo Idade:             %idade%
echo sexo:              %sexo:~0,1%

pause > nul