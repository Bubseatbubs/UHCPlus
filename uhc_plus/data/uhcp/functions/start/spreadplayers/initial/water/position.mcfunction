# Translate players' positions
execute store result score @s uhcp_initStatus run data get entity @s Pos[0]
execute at @s run function uhcp:start/spreadplayers/initial/water/x

execute store result score @s uhcp_initStatus run data get entity @s Pos[2]
execute at @s run function uhcp:start/spreadplayers/initial/water/z
