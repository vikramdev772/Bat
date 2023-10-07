@echo off
setlocal EnableDelayedExpansion

rem Set the size of the cube
set "size=5"

rem Draw the front face of the cube
for /L %%i in (0,1,%size%) do (
    set "line="
    for /L %%j in (0,1,%size%) do (
        set "line=!line!X"
    )
    echo !line!
)

rem Draw the top face of the cube
for /L %%i in (0,1,%size%) do (
    set "line="
    for /L %%j in (0,1,%size%) do (
        if %%j lss %%i (
            set "line=!line! "
        ) else (
            set "line=!line!X"
        )
    )
    echo !line!
)

rem Draw the side face of the cube
for /L %%i in (0,1,%size%) do (
    set "line="
    for /L %%j in (0,1,%size%) do (
        if %%j lss %%i (
            set "line=!line! "
        ) else (
            set "line=!line!X"
        )
    )
    echo !line!
)

endlocal

goto main:

