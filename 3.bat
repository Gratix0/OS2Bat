@echo off
chcp 65001
:start
cls
Set /p truth=Введите число от 4 до 9: 

IF %truth% LSS 4 goto wednsday
IF %truth% GTR 9 goto wednsday
Set /A win=(%RANDOM%%%9)+1

FOR /L %%i in (1, 1, %truth%) do (
echo > C:\Users\Oganisyan\Desktop\Bat\Page%%i.bat

if %%i EQU %win% (
echo Загрузка...
timeout /t 2 
color 3
timeout /t 7 
color 0
echo Верно
pause
)

if %%i NEQ %win% (
color 1
timeout /t 7 
color 9
echo Неверно
pause
)
)

goto end
