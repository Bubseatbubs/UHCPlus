summon minecraft:item ~ ~ ~ {Age:5500,PickupDelay:0s,Tags:["UHCP_NewLoot"],Item:{id:"minecraft:stone",count:1}}
execute as @s[type=minecraft:player] run data modify entity @n[tag=UHCP_NewLoot] Owner set from entity @s UUID
