# At player's location
execute if block ~ ~ ~ minecraft:powder_snow run tp @s ~ ~1 ~
tp @e[tag=UHCP_Lock,predicate=uhcp:dimensions/uhcp/main,limit=1] ~ ~1 ~
forceload add ~ ~
