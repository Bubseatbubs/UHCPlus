# Check for respawn
execute if predicate uhcp:dimensions/minecraft/overworld run return run execute in minecraft:overworld positioned 0 0 0 if entity @a[tag=UHCP_RespawnCheck,distance=..42426385] run tag @s remove UHCP_Died
execute if predicate uhcp:dimensions/minecraft/the_end run return run execute in minecraft:the_end positioned 0 0 0 if entity @a[tag=UHCP_RespawnCheck,distance=..42426385] run tag @s remove UHCP_Died
execute in minecraft:the_nether positioned 0 0 0 if entity @a[tag=UHCP_RespawnCheck,distance=..42426385] run tag @s remove UHCP_Died
