# Spawn zombie and increment counter
forceload add -1 -1 1 1
execute unless score %encounter ssiege_current_encounter matches 15 run function ssiege:giants/spawn_zombie
execute if score %encounter ssiege_current_encounter matches 15 run function ssiege:giants/spawn_panda
execute if score %encounter ssiege_current_encounter matches 15 run tellraw @a ["",{"text":"Encounter: ","bold":true,"color":"green"},{"text":"dehua replaced the Giants with "},{"text":"Pandas","bold":true,"color":"white"},{"text":"!"}]
scoreboard players add %spawned ssiege_giants 1

execute if score %spawned ssiege_giants < %count ssiege_giants run function ssiege:giants/spawn_wave
execute if score %spawned ssiege_giants = %count ssiege_giants run function ssiege:giants/finalize_wave