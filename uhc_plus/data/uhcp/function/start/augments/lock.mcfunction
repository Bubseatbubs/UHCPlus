# Source locking armor stands
execute as @e[tag=UHCP_Lock,predicate=uhcp:dimensions/uhcp/main,limit=1] run return run function uhcp:start/augments/lock/reuse
execute positioned ~ ~1 ~ summon minecraft:armor_stand run function uhcp:start/augments/lock/new
