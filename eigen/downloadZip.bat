SET BASE_PATH=%~dp0
cd %BASE_PATH%


SET SourcePath=https://gitlab.com/libeigen/eigen/-/archive/3.4.0/eigen-3.4.0.zip
SET TargetPath=%BASE_PATH%/eigen-3.4.0.zip

powershell.exe -Command (new-object System.Net.WebClient).DownloadFile('%SourcePath%','%TargetPath%')

powershell Expand-Archive %TargetPath% -DestinationPath ./

del %TargetPath%

cd %BASE_PATH%

pause