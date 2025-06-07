# Clear stack of arrows from inventory
clear @s minecraft:cobweb 64
summon minecraft:item ~ ~ ~ {PickupDelay:40s,Item:{id:"minecraft:cobweb",count:64}}
scoreboard players remove @s ssiege_cobwebCount 1
execute if score @s ssiege_cobwebCount matches 1.. run function ssiege:cobweb_limit/cobweb/all/stack
