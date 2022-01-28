set CURRENT_DIR=%~dp0
set MAIN_PATH=%CURRENT_DIR%OUTPUT

set DOSBOX_PATH="C:\Program Files (x86)\DOSBox-0.74-3\dosbox.exe"

%DOSBOX_PATH% -c "cd %MAIN_PATH%"-c MAIN.EXE
