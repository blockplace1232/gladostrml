 @echo off
scale 200
 color 67
title GLaDOS ver= 0.1.1 {Developer Edition}
echo Warning: This is an unstable build of the GLaDOS terminal! Please Procced with caution.
echo Warning: This build is deprecated and no longer receives updates. Please install the latest version!
echo Finding Kernel.........
echo Kernel Found! Booting enviroment: GLaDOS
pause

cls            
echo What is your name?
set/p name=
echo.
cls
echo Logon Sucess!
echo Hello User %name%,
echo.
echo.
pause

:menu
cls
echo Which program would you Like to use?
echo.
echo 1.System Info 2.Calc 3.Songs 4.Antivirus 5.Games

set /p input=
if %input% == 1 goto sysinfo

if %input% == 2 goto calc 

if %input% == 3 goto songs

if %input% == 4 goto antivirus

if %input% == 5 goto games

cls
:calc
calc
cls
pause
goto menu

cls
:songs
echo No folders called "Songs" Found
pause
cls
goto menu

cls
:antivirus
echo ERROR 404 Program not found
echo returning to home.
echo.
pause
cls
goto menu

cls
:games
echo.
echo No installed games on system. Returning to homepage.
echo.
pause
cls
goto menu

:sysinfo

cls
echo.=======================
echo     GLaDOS TERMINAL
echo.=======================
echo     DETAILS  
echo.
echo     VERSION = 0.0.1
echo.     
echo     RAM = 1GB
echo.
echo     CORE = INTEL I5
echo.
echo     HARD_DRIVE = 250GB     
echo.   
echo     Kernel ver = 5.6.7
echo.  
echo    Build = 69505 (DEVELOPER EDITION) {unstable build}
echo.
echo.-----------------------------------------
echo     @Copyright Aperture Science
echo.-----------------------------------------

echo  1. Check for an update 
echo  2. Read Terms Of Service.
echo  3. Menu

set /p check= 

if %check% == 1 goto update

if %check% == 2 goto toc

if %check% == 3 goto menu     
:update 
cls

:toc
cls
echo Please read this:
echo -----------------------------------
echo   GLaDOS TERMINAL TOC
echo -----------------------------------
echo.
echo This was coded by block_place1232. 
echo If you use ANY of the source code please credit me in your program.
echo Rights of Portal, Portal 2 and other registered trademarks belong to Vavle. I am  only using them as a base for my terminal.
echo This program does not contain virus code or malware. Latest versions are online all the time. 
echo DO NOT DOWNLOAD ANYWERE ELSE AS THEY COULD CONTAIN MALWARE OR HAVE UN-CREDITED CODE.
echo.
echo By using this program you automatically sign this contract.
echo.
echo - block_place1232 (Creator of the program)
echo - %name% You
pause
cls
goto menu
     

echo Checking for new version /Update.............
echo.
pause
cls
echo Error!
echo This version is a developer build and does not recieve updates.
echo.
pause
goto menu
