SET BASE_PATH=%~dp0
cd %BASE_PATH%

copy CMakePresets.json %BASE_PATH%\eigen-3.4.0\

SET PRESET_NAME="msvc2022-x64-LLVM"
cmake -S eigen-3.4.0 --preset=%PRESET_NAME%

cd %BASE_PATH%

pause