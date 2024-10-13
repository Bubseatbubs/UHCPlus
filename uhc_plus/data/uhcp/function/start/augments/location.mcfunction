# At player's location
execute if block ~ ~ ~ minecraft:powder_snow run tp @s ~ ~1 ~
function uhcp:start/augments/lock
ride @s mount @n[tag=UHCP_Lock]
particle minecraft:trial_spawner_detection_ominous ~ ~ ~ 0.5 0.5 0.5 0.001 100 normal
forceload add ~ ~
