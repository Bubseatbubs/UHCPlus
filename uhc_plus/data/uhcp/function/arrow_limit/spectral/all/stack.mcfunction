# Clear stack of spectral arrows from inventory
clear @s minecraft:spectral_arrow 64
summon minecraft:item ~ ~ ~ {PickupDelay:40s,Item:{id:"minecraft:spectral_arrow",count:64}}
scoreboard players remove @s uhcp_arrowCount 1
execute if score @s uhcp_arrowCount matches 1.. run function uhcp:arrow_limit/spectral/all/stack
