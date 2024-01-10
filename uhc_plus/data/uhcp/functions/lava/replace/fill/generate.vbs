Dim fso : Set fso = CreateObject("Scripting.FileSystemObject")
ParentFolder = fso.GetParentFolderName(WScript.ScriptFullName)
min = -63
max = 320
negCoord = -4
posCoord = 5
cBreak = 62
cInclude = False
cOld = min - 1
line = ""
lineNum = 0
lineStart = False
For i = min To max
  num = i
  Set adds = fso.OpenTextFile(ParentFolder & "\" & num & ".mcfunction", 2, True, -2)
  'adds.WriteLine "fill -32 " & i & " -32 32 " & i & " 32 minecraft:lava"
  'adds.WriteLine "say " & i
  If lineNum = cBreak Then
    lineNum = 0
    If lineStart = True Then
      line = line & vbCrLf & "fill " & negCoord & " " & (i - cBreak + 1) & " " & negCoord & " " & posCoord & " " & i & " " & posCoord & " minecraft:lava"
    Else
      line = "fill " & negCoord & " " & (i - cBreak) & " " & negCoord & " " & posCoord & " " & i & " " & posCoord & " minecraft:lava"
    End If
    cOld = i
    cInclude = True
    lineStart = True
  End If
  If Not line = "" Then
    adds.WriteLine line
  End If
  If cInclude = False Then
    adds.WriteLine "fill " & negCoord & " " & (cOld + 1) & " " & negCoord & " " & posCoord & " " & i & " " & posCoord & " minecraft:lava"
  End If
  lineNum = lineNum + 1
  cInclude = False
Next
adds.Close
Set additions = Nothing
Set adds = Nothing
Set fso = Nothing
