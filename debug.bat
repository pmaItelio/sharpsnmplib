set EnableNuGetPackageRestore=true
set msBuildDir=%WINDIR%\Microsoft.NET\Framework\v4.0.30319
.nuget\NuGet.exe restore SharpSnmpLib.sln
call %MSBuildDir%\msbuild Build.proj /t:debug
@IF %ERRORLEVEL% NEQ 0 PAUSE