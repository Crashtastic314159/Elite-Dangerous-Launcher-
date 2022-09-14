@echo off

cd "C:\Program Files (x86)\EDMarketConnector" 
start  EDMarketConnector.exe /bc
cd /d "D:\Games\EDLaunch\x52" 
start  EDx52Display.exe /bc
cd /d "D:\Games\EDLaunch" 
start /w EDLaunch.exe /bc

:LOOP
tasklist | find /i "EDLaunch" >nul 2>&1
IF ERRORLEVEL 1 (
  GOTO CONTINUE
) ELSE (
  timeout /t 5 >nul
  GOTO LOOP
)

:CONTINUE
taskkill /im EDMarketConnector.exe /t /f
taskkill /im  EDx52Display.exe /t /f


exit