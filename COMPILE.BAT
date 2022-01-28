@echo off

set CURRENT_DIR=%~dp0

set MAIN_PATH=%CURRENT_DIR%SRC\MAIN.CPP

set DOSBOX_PATH="C:\Program Files (x86)\DOSBox-0.74-3\dosbox.exe"

set BORLAND_PATH=C:\BORLANDC\BIN
set BORLAND_ARGUMENTS=%*

set OUTPUT_PATH=%CURRENT_DIR%OUTPUT

if "%~1"=="" goto blankArguments

:compile
%DOSBOX_PATH% exit -c "CD %BORLAND_PATH%" -c "del MAIN.ASM" -c "del MAIN.EXE" -c "BCC.EXE %BORLAND_ARGUMENTS% %MAIN_PATH%" -c "TASM.EXE MAIN.ASM" -c "COPY MAIN.EXE %OUTPUT_PATH%" -c "COPY MAIN.ASM %OUTPUT_PATH%" -c "exit"
exit

:blankArguments
set BORLAND_ARGUMENTS=-O2 -b -mm -S
goto compile