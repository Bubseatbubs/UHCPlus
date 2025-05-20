# Store maximum world height
$data modify storage uhcp:compass Dimensions append value {Dimension:"$(Dimension)",height:$(check)}
data modify storage uhcp:compass Current.height set from storage uhcp:compass Current.check
return 1
