SET BASE_PATH=%~dp0
cd %BASE_PATH%

copy CMakeUserPresets.json %BASE_PATH%\Catch2\

SET PRESET_NAME="msvc2022-x64-LLVM"
cmake -S Catch2 --preset=%PRESET_NAME%

cd %BASE_PATH%

pause