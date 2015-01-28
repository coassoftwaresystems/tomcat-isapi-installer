@echo off
set version=1.2.40.0
c:\WINDOWS\Microsoft.NET\Framework\v4.0.30319\MSBuild IsapiRedirect.sln /t:Rebuild /p:Configuration=Release;Platform=x86
copy IsapiRedirect\bin\x86\Release\IsapiRedirect.msi dist\IsapiRedirect-%version%_x86.msi
c:\WINDOWS\Microsoft.NET\Framework\v4.0.30319\MSBuild IsapiRedirect.sln /t:Rebuild /p:Configuration=Release;Platform=x64
copy IsapiRedirect\bin\x64\Release\IsapiRedirect.msi dist\IsapiRedirect-%version%_x64.msi
