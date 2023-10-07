@echo off
setlocal EnableDelayedExpansion

:calc_menu
cls
echo Simple Calculator
echo -----------------
echo 1. Addition
echo 2. Subtraction
echo 3. Multiplication
echo 4. Division
echo 5. Exit

set /p choice=Enter your choice (1-5): 

if "%choice%"=="1" goto addition
if "%choice%"=="2" goto subtraction
if "%choice%"=="3" goto multiplication
if "%choice%"=="4" goto division
if "%choice%"=="5" goto end

: addition
set /p num1=Enter the first number: 
set /p num2=Enter the second number: 
set /a result=num1+num2
echo Result: !result!
pause
goto calc_menu

:subtraction
set /p num1=Enter the first number: 
set /p num2=Enter the second number: 
set /a result=num1-num2
echo Result: !result!
pause
goto calc_menu

:multiplication
set /p num1=Enter the first number: 
set /p num2=Enter the second number: 
set /a result=num1*num2
echo Result: !result!
pause
goto calc_menu

:division
set /p num1=Enter the first number: 
set /p num2=Enter the second number: 
if %num2% equ 0 (
    echo Error: Division by zero is not allowed.
) else (
    set /a result=num1/num2
    echo Result: !result!
)
pause
goto calc_menu

:end
echo Exiting the calculator. Goodbye!
pause
