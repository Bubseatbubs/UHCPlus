execute store result score @s uhcp_initStatus run function ssiege:augments/effects/prismatic/trophy_hunter/spawn/try
tellraw @s ["",{"text":"[Trophy Hunter]","bold":true,"color":"aqua"},{"text":" A rare mob appeared!"}]
execute at @s run playsound minecraft:block.note_block.harp master @s ~ ~ ~ 1 1 1
scoreboard players add @s uhcp_game_time 3600
execute if score @s uhcp_game_time matches 14401.. run scoreboard players set @s uhcp_game_time -1

execute at @s positioned ^ ^ ^2 rotated ~ 0 if block ~ ~1 ~ air run return run function ssiege:augments/effects/prismatic/trophy_hunter/spawn/spawn
execute at @s positioned ~ ~ ~ run function ssiege:augments/effects/prismatic/trophy_hunter/spawn/spawn