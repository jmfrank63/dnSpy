param([string]$Configuration = "Debug")
Write-Host "Building dnSpy..." -ForegroundColor Green
dotnet build dnSpy.sln --configuration $Configuration -maxcpucount:1
if ($LASTEXITCODE -ne 0) { exit $LASTEXITCODE }
Write-Host "Build completed successfully!" -ForegroundColor Green
