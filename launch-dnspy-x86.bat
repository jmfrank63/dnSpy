@echo off
cd /d "%~dp0dnSpy\dnSpy\bin\Release\net48"
echo Starting dnSpy x86...
echo Working directory: %cd%
echo.
start "" "dnSpy-x86.exe"
if %ERRORLEVEL% EQU 0 (
    echo dnSpy x86 started successfully!
) else (
    echo Error starting dnSpy x86. Error code: %ERRORLEVEL%
    pause
)