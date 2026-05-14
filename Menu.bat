@echo off
title Menu Principal
color 02

:inicio
cls
echo.
echo -------------------------------------------
echo               Menu Principal             
echo -------------------------------------------
echo (1) Executar Excel
echo (2) Calculadora
echo (3) Navegador
echo (4) Teste de Rede
echo (5) Arquivos e Pastas
echo (Y) YouTube
echo (S) Sair
echo -------------------------------------------

set "op="
set /p op=Digite a opcao desejada :

if "%op%" == "1" (goto:planilha)
if "%op%" == "2" (goto:calculo)
if "%op%" == "3" (goto:web)
if "%op%" == "4" (goto:teste)
if "%op%" == "5" (
    call gerenciar.bat
    goto:inicio
)
if /i "%op%" == "y" (goto:yt)
if /i "%op%" == "s" (exit) else (
    echo.
    echo -------------------
    echo   Opcao invalida!
    echo -------------------
    echo.
    pause
    goto:inicio
)

:planilha
start excel.exe 
goto:inicio

:calculo
start calc.exe 
goto:inicio

:web
echo.
set "site="
set /p site=Digite o endereco da pagina web :
start msedge.exe "%site%"
goto:inicio

:teste 
echo.
set "conexao="
set /p conexao=Digite o endereco de IP ou web:
ping %conexao% -t 
goto:inicio

:yt 
echo.
set "site="
set /p site=Digite o conteudo a ser pesquisado :
echo. 
start msedge.exe "www.youtube.com/results?search_query=%site%"
goto:inicio