scoreboard players add %giant_timer ssiege_giants 1200
scoreboard players set %spawned ssiege_giants 0
execute store result score %count ssiege_giants run execute if entity @a

# Bubson spawns extra Giants
execute if score %encounter ssiege_current_encounter matches 1 run function ssiege:start/encounters/effects/1

# Spawn waves
execute positioned 0 200 0 run function ssiege:giants/spawn_wave

execute if score %encounter ssiege_current_encounter matches 15 run tellraw @a ["",{"text":"Encounter: ","bold":true,"color":"green"},{"text":"dehua replaced the Giants with "},{"text":"Pandas","bold":true,"color":"white"},{"text":"!"}]