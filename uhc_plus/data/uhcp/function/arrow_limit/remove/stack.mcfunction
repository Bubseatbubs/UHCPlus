clear @s minecraft:arrow 64
scoreboard players remove %limit uhcp_arrowCount 1
execute if score %limit uhcp_arrowCount matches 1.. run function uhcp:arrow_limit/remove/stack
