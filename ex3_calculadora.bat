@echo off

color 06
title Calculadora

set /p "op=Digite o operador>"
set /p "valor1=Digite um valor>"
set /p "valor2=Digite outro valor>"
set /a result=%valor1%  %op%  %valor2%
cls
echo.
echo.
echo %valor1%  %op%  %valor2%  = %result%
echo.

pause >nul

