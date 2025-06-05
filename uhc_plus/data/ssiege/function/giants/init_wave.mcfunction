scoreboard players add %giant_timer ssiege_giants 4200
scoreboard players set %spawned ssiege_giants 0
execute store result score %count ssiege_giants run execute if entity @a

# Bubson spawns extra Giants
execute if score %encounter ssiege_current_encounter matches 1 run function ssiege:start/encounters/effects/1

# Spawn waves centered on each base
execute as @e[type=marker,tag=SSIEGE_BASE] at @s run function ssiege:giants/spawn_wave

# Remove the temporary tag
tag @e[tag=SSIEGE_NEW_GIANT] remove SSIEGE_NEW_GIANT

execute if score %encounter ssiege_current_encounter matches 15 run tellraw @a ["",{"text":"Encounter: ","bold":true,"color":"green"},{"text":"dehua replaced the Giants with "},{"text":"Pandas","bold":true,"color":"white"},{"text":"!"}]