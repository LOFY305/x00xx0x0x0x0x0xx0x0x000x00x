@echo off
mode con: cols=90 lines=40
:diocane
title REEEEEEEEEEEEEEEEEEEEEEEEE
color 0c
cls
echo Bios
echo [92m------------[91m
wmic bios get serialnumber
wmic csproduct get uuid
echo CPU
echo [92m------------[91m
wmic cpu get serialnumber
echo Diskdrive
echo [92m------------[91m
wmic diskdrive get serialnumber
echo Baseboard
echo [92m------------[91m
wmic baseboard get serialnumber
echo MacAddress
echo [92m------------[91m
wmic path Win32_NetworkAdapter where "PNPDeviceID like '%%PCI%%' AND NetConnectionStatus=2 AND AdapterTypeID='0'" get MacAddress
echo GPU
echo [92m------------[91m
wmic PATH Win32_VideoController GET Description,PNPDeviceID
nvidia-smi -L
echo Press ENTER to check serial again...
pause >nul
goto diocane