@echo off
@title Priority Response Server #1 -- Auto Restart
cls
color 0c

:start
echo ********************************************************************************
echo ******************** BOOTING Priority Response -- Server 1 *********************
echo ********************************************************************************
timeout /t 5 >null

start CitizenMP.Server.exe
echo ... %time% - Successfully started!

timeout /t 15 >null
echo ... %time% - All resources started up successfully.

timeout /t 10800 >null
echo ... %time% - Half way point (3 hrs) reached.

timeout /t 10800 >null
echo ... %time% - Beginning shutdown process.....Killing task.

timeout /t 1 >null
echo ... %time% - Verified server ran for a 6 hour duration.

timeout /t 2 >null
taskkill /f /im CitizenMP.Server.exe >nul
rd /s /q cache 
echo -- cache deleted (server 1)
echo ... %time% - Sleeping for 15 seconds before restarting.

timeout /t 12 >null
echo ... %time% - 3 seconds.

timeout /t 1 >null
echo ... %time% - 2 seconds.

timeout /t 1 >null
echo ... %time% - 1 second.

timeout /t 1 >null
goto start
