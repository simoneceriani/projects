SET BASE_PATH=%~dp0
cd %BASE_PATH%

git clone https://github.com/catchorg/Catch2.git
cd Catch2
git checkout devel

cd %BASE_PATH%

pause