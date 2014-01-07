New-Powershell-Payload-Excel-Delivery
=====================================

This version completely eliminates dropping the .ps1 to disk to call. Instead, it takes advantage of Invoke-Shellcode (written by Matthew Graeber).

For this to work, Invoke-Shellcode and persist.vbs need to be accessible by the target (webserver, ect).

HUGE thanks to Matthew Graeber (@mattifestation) for writing Invoke-Shellcode. You can find his great work over at 
https://github.com/mattifestation.
