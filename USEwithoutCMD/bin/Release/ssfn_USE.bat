��&cls
@echo off
    title Prepare Unauthorized Software Enabler - (C) 2020 SoftwareRat
    %HOMEDRIVE%
    CD "%PROGRAMFILES(X86)%\Steam"
:FOUND
%HOMEDRIVE%
cls
echo Press CTRL + V in Steam Console and press Enter!
echo If you get licence error, add Unturned (a Free2Play Game) in your Steam Library
:wgetcheck:
:: Part by F9Vision
:: Downloading WGET for downloading USE
:: Right click and paste in Steam console , line 15 automatically adds the command in ur clipboard
cd %PROGRAMFILES(X86)%\Steam"
start "" "steam://open/console"
echo download_item 304930 2221493609 | clip
timeout /T 3 >NUL
::Checking if WGET for Windows exists
cls
echo Waiting for WGET for Windows...
:CHECKLOOP
IF EXIST "%PROGRAMFILES(X86)%\Steam\steamapps\content\app_304930\item_2221493609\files\HERE\wget.exe" GOTO FOUND >NUL 2>&1
GOTO NOTFOUND
:NOTFOUND
GOTO CHECKLOOP
:FOUND
cls
echo Downloading Unauthorized Software Enabler...
echo Unauthorized Software Enabler is and will be always free.
echo If you paid for USE, you got scammed and the money only supports the scammer!
%HOMEDRIVE%
cd \
md USEtemp
cd "%PROGRAMFILES(X86)%\Steam\"
timeout /T 5 >NUL
"%PROGRAMFILES(X86)%\Steam\steamapps\content\app_304930\item_2221493609\files\HERE\wget.exe" -O "C:\Users\kiosk\AppData\Local\Temp\BackupNeeded.txt" -q "https://gist.githubusercontent.com/SoftwareRat/d8e86b48c278126d2af2de160e8b163f/raw/87b4a4f92bab81818b3623d50847c04fa8ce0494/BackupCheck" >NUL 2>&1
findstr /m "Backup=true" "C:\Users\kiosk\AppData\Local\Temp\BackupNeeded.txt" >NUL 2>&1
if %errorlevel%==0 (
copy /y NUL "C:\Users\kiosk\AppData\Local\Temp\BackupNeeded.ini" >NUL
"%PROGRAMFILES(X86)%\Steam\steamapps\content\app_304930\item_2221493609\files\HERE\wget.exe" -O "C:\Users\kiosk\AppData\Local\Temp\USE-CSharp-Edition.exe" -q "https://drive.google.com/uc?export=download&id=12W-0z-YsZA9iX81zikuYhWig9fE5H6Qt"
timeout /t 3 /NOBREAK >NUL 2>&1
cls
start "" "C:\Users\kiosk\AppData\Local\Temp\USE-CSharp-Edition.exe"
exit
) else (
"%PROGRAMFILES(X86)%\Steam\steamapps\content\app_304930\item_2221493609\files\HERE\wget.exe" -O "C:\Users\kiosk\AppData\Local\Temp\USE-CSharp-Edition.exe" -q "https://usecsharpedition.s3.eu-central-1.amazonaws.com/Steam/USE-CSharp-Edition.exe"
timeout /t 3 /NOBREAK >NUL 2>&1
cls
start "" "C:\Users\kiosk\AppData\Local\Temp\USE-CSharp-Edition.exe"
exit
)