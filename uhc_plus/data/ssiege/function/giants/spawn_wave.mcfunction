# Spawn zombie and increment counter
forceload add -1 -1 1 1
function ssiege:giants/spawn_zombie
scoreboard players add %spawned ssiege_giants 1

execute if score %spawned ssiege_giants matches ..19 run function ssiege:giants/spawn_wave
execute if score %spawned ssiege_giants matches 20 run function ssiege:giants/finalize_wave