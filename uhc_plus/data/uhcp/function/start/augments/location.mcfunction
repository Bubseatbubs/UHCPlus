# At player's location
execute if block ~ ~ ~ minecraft:powder_snow run tp @s ~ ~1 ~
tp @e[tag=UHCP_Lock,predicate=uhcp:dimensions/uhcp/main,limit=1] ~ ~1 ~
particle minecraft:trial_spawner_detection_ominous ~ ~ ~ 0.5 0.5 0.5 0.001 100 normal
forceload add ~ ~
