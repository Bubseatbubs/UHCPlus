Dim fso : Set fso = CreateObject("Scripting.FileSystemObject")
ParentFolder = fso.GetParentFolderName(WScript.ScriptFullName)
min = -63
max = 320
negCoord = -90
posCoord = 90
'cBreak = 1
'cInclude = False
'cOld = min - 1
'line = ""
'lineNum = 0
lineStart = False
For i = min To max
  num = i
  Set adds = fso.OpenTextFile(ParentFolder & "\" & num & ".mcfunction", 2, True, -2)
  'adds.WriteLine "fill -32 " & i & " -32 32 " & i & " 32 minecraft:lava"
  'adds.WriteLine "say " & i
  '
  '
  '
  '
  'If lineNum = cBreak Then
  '  lineNum = 0
  '  If lineStart = True Then
  '    line = line & vbCrLf & "fill " & negCoord & " " & (i - cBreak + 1) & " " & negCoord & " " & posCoord & " " & i & " " & posCoord & " minecraft:lava"
  '  Else
  '    line = "fill " & negCoord & " " & (i - cBreak) & " " & negCoord & " " & posCoord & " " & i & " " & posCoord & " minecraft:lava"
  '  End If
  '  cOld = i
  '  cInclude = True
  '  lineStart = True
  'End If
  'If Not line = "" Then
  '  adds.WriteLine line
  'End If
  'If cInclude = False Then
  '  adds.WriteLine "fill " & negCoord & " " & (cOld + 1) & " " & negCoord & " " & posCoord & " " & i & " " & posCoord & " minecraft:lava"
  'End If
  'lineNum = lineNum
  'cInclude = False
  '
  '
  'If lineStart = True Then
  '  adds.WriteLine "# Fill y levels [-63.." & i & "] with lava" & vbCrLf
  '  line =  "fill " & negCoord & " " & i & " " & negCoord & " " & posCoord & " " & i & " " & posCoord & " minecraft:lava" & vbCrLf & line
  'Else
  '  adds.WriteLine "# Fill y level " & i & " with lava" & vbCrLf
  '  line = "fill " & negCoord & " " & i & " " & negCoord & " " & posCoord & " " & i & " " & posCoord & " minecraft:lava"
  '  lineStart = True
  'End If
  'adds.WriteLine line
  '
  line = "# Fill y level " & i & " with lava" & vbCrLf & "fill " & negCoord & " " & i & " " & negCoord & " " & posCoord & " " & i & " " & posCoord & " minecraft:lava"
  adds.WriteLine line
Next
adds.Close
Set adds = Nothing
Set fso = Nothing
