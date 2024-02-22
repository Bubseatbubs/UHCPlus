advancement revoke @s through uhcp:arrow_limit/gained_parent

execute store result score %init uhcp_arrowCount run clear @s arrow 0
execute store result score @s uhcp_arrowCount run clear @s arrow 0

execute store result score %arrow_limit_player uhcp_arrowCount run function uhcp:arrow_limit/maximum
execute if score @s uhcp_arrowCount <= %arrow_limit_player uhcp_arrowCount run scoreboard players reset @s uhcp_arrowCount
execute if score @s uhcp_arrowCount > %arrow_limit_player uhcp_arrowCount run function uhcp:arrow_limit/recursion
