@echo off
echo Building dnSpy...
dotnet build dnSpy.sln --configuration %1 -maxcpucount:1
if %errorlevel% neq 0 exit /b %errorlevel%
echo Build completed successfully!
