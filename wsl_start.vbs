' Start services

Dim your_wsl_equivalent_path_to_repo
your_wsl_equivalent_path_to_repo = "/mnt/c/Development/wsl1-system-startup-task"

Set UAC = CreateObject("Shell.Application")
command = "/c """ + CreateObject("Scripting.FileSystemObject").GetParentFolderName(WScript.ScriptFullName) + "\control.bat"" start"
UAC.ShellExecute "C:\Windows\System32\cmd.exe", command, "", "runas", 0
Set UAC = Nothing

Set WshShell = CreateObject("WScript.Shell")
WshShell.Run "C:\Windows\System32\bash.exe -c 'sudo service ssh --full-restart'",0
Set WshShell = Nothing

Set WshShell = CreateObject("WScript.Shell")
WshShell.Run "C:\Windows\System32\bash.exe -c 'cd " & your_wsl_equivalent_path_to_repo & " && bash wsl_start.sh'",0
Set WshShell = Nothing
