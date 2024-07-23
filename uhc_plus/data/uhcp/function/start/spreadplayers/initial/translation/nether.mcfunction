# Translate player from relative Nether position
execute store result score @s uhcp_initStatus run data get entity @s Pos[0] 8
execute at @s in minecraft:overworld run function uhcp:start/spreadplayers/initial/translation/x

execute store result score @s uhcp_initStatus run data get entity @s Pos[2]
execute at @s in minecraft:overworld run function uhcp:start/spreadplayers/initial/translation/z
