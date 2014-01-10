New-Powershell-Payload-Excel-Delivery
=====================================

This attack uses Invoke-Shellcode to execute a payload in memory. Please note that the powershell commands in the macro
can be encoded.

For this to work, Invoke-Shellcode needs to be accessible by the target.

HUGE thanks to Matthew Graeber (@mattifestation) for writing Invoke-Shellcode. You can find his great work over at 
https://github.com/mattifestation. 


1/9/2013 Update
======================================
Changed method of persisting. Instead of dropping a vbs for persistence, which remained on the system, it drops
a powershell script.
This powershell script schedules a task that will download and execute Invoke-Shellcode after the box is idle for 20 minutes. 

This means that the only file that touches disk during this attack is the initial persist.ps1, which deletes itself after 
creating the task...so after the attack is complete, you have persistence on the system with no artifact on disk.


I also took the x86/x64 check out of the macro. Invoke-Shellcode now automatically checks it for you.

**Thanks Raphael (@armitagehacker) for posting a blogpost about this persistence method.
**Thanks Matt (@mattifestation) for creating Invoke-Shellcode and your persistence modules :-)

1/10/2013 Update
=======================================
Changed persist methods once again. This time, it never drops anything to disk. Once the macro is ran, you get a shell
and persistence to the machine via a scheduled task.

All of this happens without dropping a single file to disk.
