# Translate player's position
execute if predicate uhcp:dimensions/minecraft/the_nether run return run function uhcp:start/spreadplayers/initial/translation/nether

execute store result score @s uhcp_initStatus run data get entity @s Pos[0]
execute at @s in minecraft:overworld run function uhcp:start/spreadplayers/initial/translation/x

execute store result score @s uhcp_initStatus run data get entity @s Pos[2]
execute at @s in minecraft:overworld run function uhcp:start/spreadplayers/initial/translation/z
