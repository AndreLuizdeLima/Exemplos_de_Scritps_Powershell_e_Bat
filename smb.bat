@echo off

echo Listando sessoes SMB:
net session > sessoes.txt

setlocal enabledelayedexpansion
set count=1

for /f "skip=4 tokens=2" %%a in ('net session') do (
    echo [!count!] Sessao: %%a
    set /a count+=1
)

set /p escolha=Digite o numero da sessao que deseja encerrar: 

for /f "skip=%escolha% tokens=2" %%b in ('net session') do (
    net session %%b /delete
    if !errorlevel! equ 0 (
        echo Sessao encerrada com sucesso.
    ) else (
        echo Houve um erro ao encerrar a sessao.
    )
)

pause
