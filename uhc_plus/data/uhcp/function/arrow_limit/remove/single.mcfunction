clear @s minecraft:arrow 1
scoreboard players remove @s uhcp_arrowCount 1
execute if score @s uhcp_arrowCount matches 1.. run function uhcp:arrow_limit/remove/single
