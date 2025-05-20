summon minecraft:item ~ ~ ~ {PickupDelay:40s,Tags:["UHCP_New"],Item:{id:"minecraft:apple",count:1}}
execute as @s[type=minecraft:player] run return run function uhcp:kill/soul_apple/player
execute as @n[tag=UHCP_New] run function uhcp:kill/soul_apple/item/init
