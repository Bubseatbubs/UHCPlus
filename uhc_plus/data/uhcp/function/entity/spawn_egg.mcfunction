# Spawn only adult variants of entities
kill @s
execute as @s[tag=UHCP_SpawnCCat] summon minecraft:cat run return run function uhcp:entity/spawn_egg/crazy_cat
execute as @s[tag=UHCP_SpawnMBF] summon minecraft:wolf run return run function uhcp:entity/spawn_egg/best_friend
execute as @s[tag=UHCP_SpawnCow] run return run summon minecraft:cow ~ ~ ~
execute as @s[tag=UHCP_SpawnHorse] run return run summon minecraft:horse ~ ~ ~
execute as @s[tag=UHCP_SpawnVillager] run return run summon minecraft:villager ~ ~ ~
execute as @s[tag=UHCP_SpawnSniffer] run summon minecraft:sniffer ~ ~ ~
