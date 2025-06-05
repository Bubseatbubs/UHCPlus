# Spawn Giant and increment counter
execute unless score %encounter ssiege_current_encounter matches 15 run function ssiege:giants/spawn/overworld
execute if score %encounter ssiege_current_encounter matches 15 run function ssiege:giants/spawn/panda
scoreboard players add %spawned ssiege_giants 1

# Recursion
execute if score %spawned ssiege_giants < %count ssiege_giants run function ssiege:giants/spawn_wave
execute if score %spawned ssiege_giants = %count ssiege_giants run function ssiege:giants/spread_wave