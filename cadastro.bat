@echo off 
title Gestao de Clientes
color 02

:inicio
cls
echo.
echo.
echo ------------------------------------------
echo         Gerenciamento de Clientes
echo ------------------------------------------
echo    [N] Novo Cliente
echo    [L] Lista de Clientes
echo    [C] Consulta de Clientes
echo    [E] Encerrar Programa
echo ------------------------------------------
set "op="
set /p op=Digite sua opcao :
if /i "%op%" == "n" (goto:gravar)
if /i "%op%" == "l" (goto:listar)
if /i "%op%" == "c" (goto:consultar)
if /i "%op%" == "e" (goto:sair) else (
        echo.
        echo -------------------------------
        echo        Opcao Invalida!
        echo -------------------------------
        echo.
        pause
        goto:inicio
)

:gravar 
cls
echo.
set "cpf="
set "nome="
set /p cpf=Digite o CPF do cliente :
set /p nome=Digite o nome do cliente :
echo %date% %time% %cpf% %nome% >> lista.txt

echo.
echo ------------------------------------------
echo        Cliente Gravado com Sucesso!
echo ------------------------------------------
echo.
set "resp="
set /p resp=Deseja gravar novo cliente? [S/N] :
if /i "%resp%" == "s" (goto:gravar) else (goto:inicio)

:listar
cls
echo.
echo -----------------------------------------------------------------------------------------------
echo                             LISTAGEM GERAL DE CLIENTES.
echo -----------------------------------------------------------------------------------------------
echo    DATA        HORA    CPF DO CLIENTE NOME DO CLIENTE
if exist lista.txt (
    type lista.txt
) else (
    echo.
    echo    Nenhum cliente cadastrado ainda. O arquivo lista.txt sera criado no primeiro cadastro.
)
echo.
pause
goto:inicio

:consultar
cls
echo.
set "buscar="
set /p buscar=Digite o CPF ou nome para ser buscado :
echo -----------------------------------------------------------------------------------------------
echo                             CONSULTA DE CLIENTES.
echo -----------------------------------------------------------------------------------------------
echo    DATA        HORA    CPF DO CLIENTE NOME DO CLIENTE
echo -----------------------------------------------------------------------------------------------

if exist lista.txt (
    findstr /i "%buscar%" lista.txt
) else (
    echo    Nenhum dado encontrado. O banco de clientes esta vazio.
)
echo -----------------------------------------------------------------------------------------------
set "resp="
set /p resp=Deseja consultar novo cliente? [S/N] : 
if /i "%resp%" == "s" (goto:consultar) else (goto:inicio)

:sair
echo.
set "resp="
set /p resp=Deseja sair? [S/N] :
if /i "%resp%" == "s" (exit) else (goto:inicio)