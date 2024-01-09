Dim fso : Set fso = CreateObject("Scripting.FileSystemObject")
ParentFolder = fso.GetParentFolderName(WScript.ScriptFullName)
For i = -63 To 320
  num = i
  Set adds = fso.OpenTextFile(ParentFolder & "\" & num & ".mcfunction", 2, True, -2)
  adds.WriteLine "fill -32 " & i & " -32 32 " & i & " 32 minecraft:lava"
Next
adds.Close
Set additions = Nothing
Set adds = Nothing
Set fso = Nothing
