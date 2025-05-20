# Target player
$execute at @s run setblock ~ $(height) ~ minecraft:lodestone
data modify storage uhcp:compass Compass.Pos set from entity @s Pos
return 0
