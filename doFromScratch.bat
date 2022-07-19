@echo OFF

SET BASE_PATH=%~dp0
cd %BASE_PATH%

ECHO -------------------- Catch2 --------------------
cd Catch2

cloneRepo.bat
generate.bat
build.bat
install.bat

cd %BASE_PATH%
ECHO -------------------- Catch2 done ---------------


ECHO -------------------- eigen ---------------------
cd eigen

downloadZip.bat
generate.bat
build.bat
install.bat

cd %BASE_PATH%
ECHO -------------------- eigen done ----------------

ECHO -------------------- cmakebase------------------

scripts\cclone_cmakebase.bat

ECHO -------------------- eigen done ----------------

cd %BASE_PATH%

pause