@echo OFF

SET BASE_PATH=%~dp0
cd %BASE_PATH%

ECHO -------------------- Catch2 --------------------
cd %BASE_PATH%
cd Catch2

cmd /c cloneRepo.bat
cmd /c generate.bat
cmd /c build.bat
cmd /c install.bat

cd %BASE_PATH%
ECHO -------------------- Catch2 done ---------------


ECHO -------------------- eigen ---------------------
cd %BASE_PATH%
cd eigen

cmd /c downloadZip.bat
cmd /c generate.bat
cmd /c build.bat
cmd /c install.bat

cd %BASE_PATH%
ECHO -------------------- eigen done ----------------

ECHO -------------------- cmakebase------------------
cd %BASE_PATH%

cmd /c scripts\clone_cmakebase.bat

ECHO -------------------- cmakebase done ------------

cd %BASE_PATH%

pause