@echo off
cls
title System Works
color 0b
goto menu

:menu
echo.
echo Welcome to system works!
echo If a command is spelled wrong or dosen't exist. It may crash the app.
echo type help for help
echo (App Is licensed)
echo Welcome! %username%
pause

set /p action=

if %action% == help goto help
if %action% == admin goto adminsignin
if %action% == accountsetup goto signup
if %action% == accountdetail goto accountdetail
if %action% == verify goto verify
if %action% == User goto UserPanel
goto invalidCode


:help
cls
title System Works - help
echo No help avaliable :(
echo.
pause
cls
goto menu




:adminsignin
echo.
echo Welcome to the admin panel
echo Please verify your admin access
echo Select a way to sign in
echo.
echo 1. Name ID
echo 2. Regular ID
pause

set /p Choose=

if %Choose% == 1 goto 1ID
if %Choose% == 2 goto 2ID
goto menu



:Invalid1
echo.
echo Uhh... %ID1% is Not a Adminstration Name. Please try again
echo (Does your Name have Capital letters?)
echo.
pause
cls

:1ID
echo.
echo Enter your Name ID (IT SHOULD HAVE NO CAPPILZATATION "A=No a=Yes")
pause

set /p ID1=

if %ID1% == alejandro acosta
goto Invalid1

:2ID
echo.
echo Enter your id (12 DIGETS)

set /p ID2=

if %ID2% == 864784701090 goto adminpanel
goto Invalid


:adminpanel
cls
title Adminstration - SystemWorks
color 3d
echo Welcome adminstration
echo No actions avlilable
pause


:invalidCode
echo.
echo Sorry, %action% is not avalilable command
echo Try a new command!
echo.
pause
goto menu
cls

:Invalid
echo.
echo Uhh... %ID2% is Not a Adminstration ID. Please try again
echo (Your number must be 12 digets. Did you put spaces?)
echo.
pause

:accountdetail
echo Computer Name or local Device short name: %username%
echo Verification ID: %id973%
goto menu

:verify
cls
echo Create your own verification ID
pause

set /p id973=

if %id973% == Unknown goto menu
goto VerifyID

:VerifyID
echo.
echo Is this your ID? %id973%
echo type "y" or "n"

set /p command=

if %command% == y goto CompleteVerification
if %command% == n goto menu

:CompleteVerification
cls
echo. 
echo Complete the verification
echo VerificationID: %id973%
echo DeviceName: %username%
echo -----------------------------
echo Your verification is completed
echo.
pause
goto menu


:UserPanel
echo.
echo You'll Be logging in as %username%...
pause
wait (4)
goto UserPanelMain

:UserPanelMain
cls
echo.
echo User Panel, Welcome %username%
pause
cls