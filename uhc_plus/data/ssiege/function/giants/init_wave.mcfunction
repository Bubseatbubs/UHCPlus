scoreboard players add %giant_timer ssiege_giants 1200
scoreboard players set %spawned ssiege_giants 0
execute store result score %count ssiege_giants run execute if entity @a[team=blue]
scoreboard players operation %count ssiege_giants /= #2 uhcp_const

# Bubson spawns extra Giants
execute if score %encounter ssiege_current_encounter matches 1 run function ssiege:start/encounters/effects/1

# Spawn waves - negative
execute positioned -50 200 -50 run function ssiege:giants/spawn_wave

# Spawn waves - positive
scoreboard players set %spawned ssiege_giants 0
execute if score %encounter ssiege_current_encounter matches 1 run function ssiege:start/encounters/effects/1
execute positioned 50 200 50 run function ssiege:giants/spawn_wave

# Spawn waves at center if n/2 has a remainder
scoreboard players operation %count_remainder ssiege_giants %= #2 ssiege_giants
execute if score %count_remainder ssiege_giants matches 1 run scoreboard players set %count ssiege_giants 1
execute if score %encounter ssiege_current_encounter matches 1 run function ssiege:start/encounters/effects/1
execute positioned 0 200 0 run function ssiege:giants/spawn_wave

execute if score %encounter ssiege_current_encounter matches 15 run tellraw @a ["",{"text":"Encounter: ","bold":true,"color":"green"},{"text":"dehua replaced the Giants with "},{"text":"Pandas","bold":true,"color":"white"},{"text":"!"}]