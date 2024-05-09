execute at @s run summon minecraft:item ~ ~ ~ {PickupDelay:40s,Item:{id:"minecraft:arrow",count:64}}
scoreboard players remove %extra_stacks uhcp_arrowCount 1
execute if score %extra_stacks uhcp_arrowCount matches 1.. run function uhcp:arrow_limit/summon/arrow_stack
