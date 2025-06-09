execute store result score %rand ssiege_giants run random value 0..1
execute if score %rand ssiege_giants matches 0 positioned ~ ~ ~ run return run function ssiege:giants/spawn/zombie
execute if score %rand ssiege_giants matches 1 positioned ~ ~ ~ run return run function ssiege:giants/spawn/skeleton