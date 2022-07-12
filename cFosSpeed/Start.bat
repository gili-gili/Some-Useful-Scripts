@echo off
set /a COUNT=1
echo =============================================
echo cFosSpeed Traffic Shaping Calibration Script 
echo Powered by Speedtest, written by gili-gili
echo https://github.com/gili-gili/Some-Useful-Scripts/tree/main/cFosSpeed/
echo =============================================
set /p TARGET=How many rounds? 
:run
echo Round #%COUNT%, running
start /min cmd /C speedtest
timeout /nobreak /t 8
if %COUNT% equ %TARGET% exit
set /a COUNT=%COUNT%+1
goto run
echo Done!
pause