Set fso = CreateObject("Scripting.FileSystemObject")
Set shell = CreateObject("WScript.Shell")

' 获取当前 VBS 脚本所在目录
scriptDir = fso.GetParentFolderName(WScript.ScriptFullName)

Set objArgs = WScript.Arguments
x=msgbox(objArgs(1), 64, objArgs(0))
