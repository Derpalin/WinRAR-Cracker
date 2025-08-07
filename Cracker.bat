@echo off
title Pass Cracker
color a
if not exist "C:\Program Files\7-Zip" (
	echo 7-Zip Not Installed!
	pause
	exit
)

echo.
set /p archive="Enter Archive: "
if not exist "%archive%" (
	echo Archive Not Found!
	pause
	exit
)

set /p wordlist="Enter Wordlist: "
if not exist "%wordlist%" (
	echo Wordlist Not Found!
	pause
	exit
)
echo Trying Passwords....
for /f %%a in (%wordlist%) do (
	set pass=%%a
	call :attempt
)
echo L wordlist
pause
exit

:attempt
"C:\Program Files\7-Zip\7z.exe" x -p%pass% "%archive%" -o"cracked" -y >nul 2>&1
echo ATTEMPT : %pass%
if /I %errorlevel% EQU 0 (
	echo Success! Password Found: %pass%
	pause
	exit
)