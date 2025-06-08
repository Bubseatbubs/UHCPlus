summon marker ~ ~7 ~ {Tags:["SSIEGE_loot"]}

# Calculate how many shards to drop
execute as @s[team=blue] store result score %n uhcp_initStatus run execute if entity @a[team=blue]
execute as @s[team=red] store result score %n uhcp_initStatus run execute if entity @a[team=red]
scoreboard players operation %n uhcp_initStatus *= %MULT_CONST uhcp_initStatus
scoreboard players operation @e[type=marker,tag=SSIEGE_loot,limit=1,sort=nearest] ssiege_multi = %n uhcp_initStatus

execute as @e[type=marker,tag=SSIEGE_loot,limit=1,sort=nearest] at @s run loot spawn ~ ~ ~ loot ssiege:multi_soulshard
execute as @e[type=marker,tag=SSIEGE_loot,limit=1,sort=nearest] at @s run tag @e[type=item,nbt={Item:{id:"minecraft:nether_star"}}] add SSIEGE_loot

# Apply random velocities to all spawned soul shard items
execute as @e[type=item,tag=SSIEGE_loot,distance=..10] run data modify entity @s Motion set value [0.0,0.3,0.0]
execute as @e[type=item,tag=SSIEGE_loot,distance=..10] store result entity @s Motion[0] double 0.01 run random value -50..50
execute as @e[type=item,tag=SSIEGE_loot,distance=..10] store result entity @s Motion[1] double 0.01 run random value 20..60
execute as @e[type=item,tag=SSIEGE_loot,distance=..10] store result entity @s Motion[2] double 0.01 run random value -50..50

execute as @e[type=item,tag=SSIEGE_loot,distance=..10] run data merge entity @s {Glowing:1b}

# Clean up the temporary marker
kill @e[type=marker,tag=SSIEGE_loot]