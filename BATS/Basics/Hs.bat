@echo off
setlocal EnableDelayedExpansion

set /p size=Enter the size of the square: 

rem Draw the top side of the square
for /L %%i in (1,1,%size%) do (
    set "line="
    for /L %%j in (1,1,%size%) do (
        if %%i==1 (
            set "line=!line!*"
        ) else if %%i==%size% (
            set "line=!line!*"
        ) else (
            if %%j==1 (
                set "line=!line!*"
            ) else if %%j==%size% (
                set "line=!line!*"
            ) else (
                set "line=!line! "
            )
        )
    )
    echo !line!
)

endlocal
