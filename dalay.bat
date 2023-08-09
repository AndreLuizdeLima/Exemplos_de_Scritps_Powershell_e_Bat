@echo off
title teste
mode con: lines=8 cols=40
color 02
echo:
echo contando 5s
ping 127.0.0.1 -n 2 > nul
echo 5
ping 127.0.0.1 -n 2 > nul
echo 4
ping 127.0.0.1 -n 2 > nul
echo 3
ping 127.0.0.1 -n 2 > nul
echo 2
ping 127.0.0.1 -n 2 > nul
echo 1
