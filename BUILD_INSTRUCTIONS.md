# Building dnSpy

## Build Order Issue

Due to the Roslyn project dependencies, Visual Studio may fail to build the solution on a clean build because it tries to build projects in parallel.

## Workarounds

### Option 1: Use the build script (Recommended)

Run the included PowerShell build script:

```powershell
.\build.ps1
```

For Release builds:

```powershell
.\build.ps1 -Configuration Release
```

### Option 2: Use command line with single-threaded build

```powershell
dotnet build dnSpy.sln --configuration Debug -maxcpucount:1
```

### Option 3: Build twice in Visual Studio

1. Build the solution (it will fail)
2. Build again (it should succeed)

The first build compiles the Roslyn dependencies, and the second build uses them.

##Reducing Warnings

The solution builds with some warnings about a missing ruleset file. This has been fixed by creating:
- `DisableBuggyRoslynAnalyzerThatPreventsCompilingThisProjectRemoveWhenItsNotBuggyAnymore.ruleset`


