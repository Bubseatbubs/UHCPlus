# Source locking armor stands
execute as @e[tag=UHCP_Lock,predicate=uhcp:dimensions/uhcp/main,limit=1] run return run tp @s ~ ~1 ~
summon minecraft:armor_stand ~ ~1 ~ {Invulnerable:1b,Marker:1b,Invisible:1b,Tags:["UHCP_Lock"]}
