@echo off
IF %1.==. GOTO NoArgs
setlocal
set NDK_ROOT=%ANDROID_NDK_ROOT%
if "%ANDROID_NDK_ROOT%"=="" set NDK_ROOT=""
set NDKSTACK=%NDK_ROOT%\ndk-stack.cmd

%NDKSTACK% -sym UltimateOpenWorld_Symbols_v1/UltimateOpenWorldarm64 -dump "%1" > UltimateOpenWorld_SymbolizedCallStackOutput.txt

goto:eof


:NoArgs
echo.
echo Required argument missing, pass a dump of adb crash log. (SymboliseCallStackDump C:\adbcrashlog.txt)
pause
