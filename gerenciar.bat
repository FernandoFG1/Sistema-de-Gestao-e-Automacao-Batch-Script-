@echo off
title Gerenciamento
color 02

:inicio
cls
echo.
echo -------------------------------------------
echo           Gerenciamento de Arquivos            
echo -------------------------------------------
echo (G) Gerar Arquivos
echo (O) Organizar Arquivos 
echo (R) Retornar ao Menu
echo -------------------------------------------
set "op="
set /p op=Digite a opcao desejada :

if /i "%op%" == "G" (goto:gerar)
if /i "%op%" == "O" (goto:organizar)
if /i "%op%" == "R" (
    call Menu.bat
    exit /b
) else (
    echo.
    echo -------------------
    echo   Opcao invalida!
    echo -------------------
    echo.
    pause
    goto:inicio
)

:gerar
echo.
set "nome="
set "qtde="
set "tipo="
set /p nome=Digite o nome do arquivo :
set /p qtde=Digite a quantidade de arquivos a serem gerados :
set /p tipo=Digite o tipo de arquivo a ser gerado :
for /L %%n in (1,1,%qtde%) do (
    echo Teste > "%nome%%%n.%tipo%"
)
echo.
echo -----------------------------------
echo    Arquivos criados com sucesso!
echo -----------------------------------
echo.
pause
goto:inicio

:organizar
echo.
set "pasta="
set "tipo="
set /p pasta=Digite o nome da pasta a ser criada : 
set /p tipo=Digite o tipo do arquivo a ser organizado :

md "%USERPROFILE%\Desktop\%pasta%"
move "*.%tipo%" "%USERPROFILE%\Desktop\%pasta%\"

echo.
echo -----------------------------------
echo  Arquivos organizados com sucesso!
echo -----------------------------------
echo.
pause
goto:inicio