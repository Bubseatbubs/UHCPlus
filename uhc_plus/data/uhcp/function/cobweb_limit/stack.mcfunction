# Clear stack of cobwebs from inventory
clear @s minecraft:cobweb 64
summon minecraft:item ~ ~ ~ {PickupDelay:40s,Item:{id:"minecraft:cobweb",count:64}}
scoreboard players remove @s uhcp_initStatus 1
execute if score @s uhcp_initStatus matches 1.. run function uhcp:cobweb_limit/stack
