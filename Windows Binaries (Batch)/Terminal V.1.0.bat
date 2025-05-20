 @echo off
color 06
title GLaDOS ver= 0.1.0
echo New version found. Please update your software.
echo Finding Kernel.........
echo Kernel Found! Booting enviroment: GLaDOS
pause

cls            
echo what is your name?
set/p name=
echo.
cls
echo HELLO! %name%
echo.
pause

:menu
cls
echo Which Program Would you Like to use.
echo.
echo 1.System Info 2.Calc 3.Clock 4.Calendar 5.Songs 6.Antivirus

set /p input=
if %input% == 1 goto sysinfo
if %input% == 2 goto calc 
if %input% == 3 goto clock
if %input% == 4 goto calendar
if %input% == 5 goto Songs
if %input% == 6 goto antivirus

cls
:calc
calculator.exe
pause
goto menu

cls
:clock
clock.exe
pause
goto menu

cls
:calendar
calendar.exe
pause
goto menu

cls
:Songs
echo No folders called "Songs" Found
pause
goto menu





:sysinfo

cls
echo.=======================
echo     GLaDOS TERMINAL
echo.=======================
echo     DETAILS  
echo.
echo     VERSION = 0.1.0
echo.     
echo     RAM = 1GB
echo.
echo     CORE = INTEL I5
echo.
echo     HARD_DRIVE = 250GB     
echo.   
echo     Kernel ver = 5.6.7
echo.  
echo    Build = 69421 {Stable build}
echo.
echo.-----------------------------------------
echo     @Copyright Aperture Science
echo     @Copyright P.inc (for source code)
echo.-----------------------------------------
echo.
echo Wanna check for update?

echo  1. to check for update 
echo  2. Menu

set /p check= 

if %check% == 1 goto update

if %check% == 2 goto menu




     
:update 
cls


echo Checking for new version /Update.............
echo.
pause
cls
echo.
echo Updates found!
echo Please install the latest version here: https://github.com/blockplace1232/gladostrml
echo.
pause
goto menu
