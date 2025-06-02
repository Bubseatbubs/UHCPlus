scoreboard players set %giant_timer ssiege_giants 0
scoreboard players set %spawned ssiege_giants 0
scoreboard players set #2 ssiege_giants 2
scoreboard players set #3 ssiege_giants 3
execute store result score %count ssiege_giants run execute if entity @a
execute unless score %encounter ssiege_current_encounter matches 1 run scoreboard players operation %count ssiege_giants *= #2 ssiege_giants

# Bubson spawns extra Giants
execute if score %encounter ssiege_current_encounter matches 1 run scoreboard players operation %count ssiege_giants *= #3 ssiege_giants
execute if score %encounter ssiege_current_encounter matches 1 run tellraw @a ["",{"text":"Encounter: ","bold":true,"color":"green"},{"text":"Bubson spawned "},{"text":"extra Giants","bold":true,"color":"red"},{"text":"!"}]

playsound minecraft:entity.lightning_bolt.thunder master @a 0 0 0 1 1 1
function ssiege:giants/spawn_wave