@ECHO OFF

REM Path to the eagle binaries
set EAGLE_PATH=C:\Program Files (x86)\EAGLE-6.3.0\bin\
set LIBRARY_PATH=%~dp0

REM Delete all existing scripts
DEL *.scr

REM Generates full eagle script of entire library
"%EAGLE_PATH%eagle.exe" -C'EXPORT SCRIPT _full_library.scr; QUIT' C:\Users\Angus\Dropbox\Electronics\Eagle\lbr\OmniLoco.lbr

REM Run the ULP dump script
"%EAGLE_PATH%eagle.exe" -C'RUN %LIBRARY_PATH%\lbrdump.ulp %LIBRARY_PATH% _full_library.scr; QUIT;' C:\Users\Angus\Dropbox\Electronics\Eagle\lbr\OmniLoco.lbr
