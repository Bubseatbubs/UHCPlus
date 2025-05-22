# At player's location
forceload add ~ ~
execute if block ~ ~ ~ minecraft:powder_snow run tp @s ~ ~1 ~
tag @s add UHCP_CurrentLock
function uhcp:start/augments/lock
tag @s remove UHCP_CurrentLock
particle minecraft:trial_spawner_detection_ominous ~ ~ ~ 0.5 0.5 0.5 0.001 100 normal
