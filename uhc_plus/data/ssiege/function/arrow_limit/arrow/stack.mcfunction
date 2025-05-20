# Clear stack of arrows from inventory
clear @s minecraft:arrow 64
summon minecraft:item ~ ~ ~ {PickupDelay:40s,Item:{id:"minecraft:arrow",count:64}}
scoreboard players remove @s uhcp_initStatus 1
execute if score @s uhcp_initStatus matches 1.. run function uhcp:arrow_limit/arrow/stack
