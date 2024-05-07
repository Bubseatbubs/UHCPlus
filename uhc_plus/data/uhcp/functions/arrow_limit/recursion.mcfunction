scoreboard players remove @s uhcp_arrowCount 1
clear @s minecraft:arrow 1
execute if score @s uhcp_arrowCount > %arrow_limit_player uhcp_arrowCount run function uhcp:arrow_limit/recursion
