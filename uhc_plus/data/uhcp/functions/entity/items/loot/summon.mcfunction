summon minecraft:item ~ ~ ~ {Age:5500,PickupDelay:0s,Tags:["UHCP_NewLoot"],Item:{id:"minecraft:stone",count:1}}
execute as @s[type=minecraft:player] run data modify entity @e[tag=UHCP_NewLoot,sort=nearest,limit=1] Owner set from entity @s UUID
