# fivem-AutoRestart
This batch file will auto restart your FiveM server every 6 hours...

# Info
**10800** is 3 hours
```
timeout /t 10800 >null
echo ... %time% - Half way point (3 hrs) reached.
```
Another **10800** is 3 hours
```
timeout /t 10800 >null
echo ... %time% - Beginning shutdown process.....Killing task.
```
Change accordingly...

# Installation
* Rename your original *start.bat* to something else or just delete it.
* Create a new *start.bat* with the code provided.
* **Start server using new *start.bat* provided.

Enjoy.





