Option Explicit

Dim shell, fso, scriptDir, url, ps1Path, command

If WScript.Arguments.Count < 1 Then
    WScript.Quit 1
End If

Set shell = CreateObject("WScript.Shell")
Set fso = CreateObject("Scripting.FileSystemObject")

url = WScript.Arguments(0)
scriptDir = fso.GetParentFolderName(WScript.ScriptFullName)
ps1Path = fso.BuildPath(scriptDir, "ssh-handler.ps1")

command = "powershell.exe -NoProfile -ExecutionPolicy Bypass -File """ & ps1Path & """ """ & url & """"

' Run hidden, do not wait.
shell.Run command, 0, False
