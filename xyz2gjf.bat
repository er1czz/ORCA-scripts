@echo off
REM This script copies all files with the .xyz extension as .gjf files in the same directory.
for %%f in (*.xyz) do  (
    echo Processing %%f...
    REM write specific gjf filler
    echo !Put Keywords Here, check Charge and Multiplicity. > "%%~nf.gjf"
    REM write specific gjf filler #
    echo # >> "%%~nf.gjf"
    REM write three empty lines to the target gjf file
    echo. >> "%%~nf.gjf"
    echo. >> "%%~nf.gjf"
    echo. >> "%%~nf.gjf"
    echo 0  1^ >> "%%~nf.gjf" 
    REM Use more +2 to skip the first two lines  gjf
    more +2 "%%f" >> "%%~nf.gjf"
)
echo Copy process complete.
echo Created by Eric Z. 3/17/2026
pause