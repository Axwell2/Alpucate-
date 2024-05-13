::[Bat To Exe Converter]
::
::YAwzoRdxOk+EWAjk
::fBw5plQjdCiDJH2L40w8JxpQcCWyHyWzBbp8
::YAwzuBVtJxjWCl3EqQJgSA==
::ZR4luwNxJguZRRnk
::Yhs/ulQjdF+5
::cxAkpRVqdFKZSjk=
::cBs/ulQjdF+5
::ZR41oxFsdFKZSDk=
::eBoioBt6dFKZSTk=
::cRo6pxp7LAbNWATEpSI=
::egkzugNsPRvcWATEpSI=
::dAsiuh18IRvcCxnZtBJQ
::cRYluBh/LU+EWAjk
::YxY4rhs+aU+IeA==
::cxY6rQJ7JhzQF1fEqQJhZksaHErSXA==
::ZQ05rAF9IBncCkqN+0xwdVsFAlTMbCXqZg==
::ZQ05rAF9IAHYFVzEqQIRJAtBTwWWOQs=
::eg0/rx1wNQPfEVWB+kM9LVsJDCWOLH65B6EZiA==
::fBEirQZwNQPfEVWB+kM9LVsJDGQ=
::cRolqwZ3JBvQF1fEqQJQ
::dhA7uBVwLU+EWHWB91cjLXs=
::YQ03rBFzNR3SWATElA==
::dhAmsQZ3MwfNWATElA==
::ZQ0/vhVqMQ3MEVWAtB9wSA==
::Zg8zqx1/OA3MEVWAtB9wSA==
::dhA7pRFwIByZRRnk
::Zh4grVQjdCiDJHuF4EE4LQhofBaNO3m7C/VRqMv0//PJp1UYNA==
::YB416Ek+ZG8=
::
::
::978f952a14a936cc963da21a135fa983
 @echo off
Title Alpucate
:Menu
cls
echo Hi! Welcome To Alpucate!. What Will You Do Now?
echo "a = Taskkill"
echo "b = Start"
echo "c = Move"
echo "d = Shutdown"
echo "e = Restart"
echo "f = Rename"
echo "g = DriverQuery"
echo "h = Compare"
echo "i = Delete"
echo "j = ChkDsk"
echo "k = TaskList"
echo "l = Ver"
set /p input=Enter Choices : 
if %input% == a goto a
if %input% == b goto b
if %input% == c goto c
if %input% == d goto d
if %input% == e goto e
if %input% == f goto f
if %input% == g goto g
if %input% == h goto h
if %input% == i goto i
if %input% == j goto j
if %input% == k goto k
if %input% == l goto l
:a
cls
set /p tskl=Enter Program Or Task Name : 
taskkill /im %tskl%
echo Taskkill Completed
pause
goto Menu
:b
cls
set /p strt=Enter Program Or Task Name : 
start %strt%
echo Program Start Sucess
pause
goto Menu
:c
cls
set /p file=Paste File Source Path : 
set /p dest=Move Destination : 
move %file% %dest%
pause
goto menu
:d
cls
echo Warning!, restarting or shutdowning with Alpucate can takes for a minutes.
set /p shtd=Are You Sure? Y or N : 
if %shtd% == Y goto shutd
if %shtd% == N goto Menu
:shutd
cls
shutdown -s
:e
cls
echo Warning!, restarting or shutdowning with Alpucate can takes for a minutes.
set /p rst=Are You Sure? Y or N : 
if %rst% == Y goto restart
if %rst% == N goto Menu
:restart
cls
shutdown -r
:f
cls
set /p rnm=Paste File Source Path : 
set /p nnm=Create The New Name (with a source file format like .txt): 
ren %rnm% %nnm%
echo file rename sucess
pause
goto Menu
:g
cls
driverquery
pause
goto Menu
:h
cls
comp
pause
goto Menu
:i
cls
echo *Use This Command Can Cause High Risk, So Dont Do This At System File.*
set /p dlt=Paste File Source Path : 
del %dlt%
pause
goto Menu
:j
cls
echo *You Have To "Run As Administrator Mode" To Run This Command*
set /p diskt=Type The Drive Name (Like "G") : 
set /p rep=R Or F : 
chkdsk %diskt%: /%rep%
pause
goto Menu
:k
cls
tasklist
pause
goto Menu
:l
cls
ver
pause
goto Menu