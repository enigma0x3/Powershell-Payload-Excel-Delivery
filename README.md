New-Powershell-Payload-Excel-Delivery
=====================================

Instead of touching disk 3 times (1 for payload.ps1, 1 for remove.bat and 1 for persist.vbs), I have integrated Invoke-Shellcode to download and execute the payload all in memory. As a result, this attack only touches disk once (for persistence) instead of 3 times.


For this to work, Invoke-Shellcode and persist.vbs need to be accessible by the target (webserver, ect).

HUGE thanks to Matthew Graeber (@mattifestation) for writing Invoke-Shellcode. You can find his great work over at 
https://github.com/mattifestation. 


1/9/2013 Update
======================================
Changed method of persisting. Instead of dropping a vbs for persistence, it drops a .ps1. This powershell script
schedules a task that will download and execute Invoke-Shellcode after the box is idle for 20 minutes. 

This means that the only file that touches disk during this attack is the initial persist.ps1, which deletes itself after 
creating the task.
