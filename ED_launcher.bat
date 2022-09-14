@echo off

:: The installation path for EDMC 
cd "C:\Program Files (x86)\EDMarketConnector" 
start  EDMarketConnector.exe /bc

:: The installation path for EDx52Display. To disable, delete/comment the next two lines
cd /d "D:\Games\EDLaunch\x52" 
start  EDx52Display.exe /bc

:: The installation path for the game
cd /d "D:\Games\EDLaunch" 
start /w EDLaunch.exe /bc

::Main loop
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
