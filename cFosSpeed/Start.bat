@echo off
set /a COUNT=1
set /a TARGET=200
set /a DELAY=6
echo =============================================
echo cFosSpeed Traffic Shaping Calibration Script 
echo Powered by Speedtest, written by gili-gili
echo https://github.com/gili-gili/Some-Useful-Scripts/tree/main/cFosSpeed/
echo =============================================
set /p TARGET=How many rounds?(Default: 200) 
set /p DELAY=How long between tests?(Default: 6) 
echo Total rounds: %TARGET%. Delay: %DELAY%
:run
echo Round #%COUNT%, running
start /min cmd /C speedtest
timeout /nobreak /t %DELAY%
if %COUNT% equ %TARGET% exit
set /a COUNT=%COUNT%+1
goto run
echo Done!
pause