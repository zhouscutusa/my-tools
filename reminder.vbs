Set fso = CreateObject("Scripting.FileSystemObject")
Set shell = CreateObject("WScript.Shell")

' ��ȡ��ǰ VBS �ű�����Ŀ¼
scriptDir = fso.GetParentFolderName(WScript.ScriptFullName)

Set objArgs = WScript.Arguments
x=msgbox(objArgs(1), 64, objArgs(0))
