@echo off
call :myFunction
echo Back in the main script.
goto :eof

:myFunction
echo Inside the function.
goto :eof
