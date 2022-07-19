SET BASE_PATH=%~dp0
cd %BASE_PATH%

SET PRESET_NAME="msvc2022-x64-LLVM"

cd build-%PRESET_NAME%
cmake --build . --config Debug  
cmake --build . --config Release 

cd %BASE_PATH%


pause