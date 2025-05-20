# Store minimum world height or find maximum world height
$execute unless block ~ $(check) ~ minecraft:bedrock run return run function uhcp:compass/dimension/lodestone/minimum/maximum
$data modify storage uhcp:compass Dimensions append value {Dimension:"$(Dimension)",height:$(check)}
data modify storage uhcp:compass Current.height set from storage uhcp:compass Current.check
return 1
