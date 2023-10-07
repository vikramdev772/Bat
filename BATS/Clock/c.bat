@echo offf
Title Markiv
@mode con cols=30 lines=7
color 02
:main
cls
echo.
echo Time: %time%
echo.
echo Date: %date%
echo.
ping -n 2 0.0.0.0>nul
goto main
