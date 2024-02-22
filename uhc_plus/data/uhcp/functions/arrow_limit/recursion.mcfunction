execute store result score @s uhcp_arrowCount run clear @s arrow 0
execute if score @s uhcp_arrowCount > %arrow_limit_player uhcp_arrowCount run clear @s arrow 1
execute if score @s uhcp_arrowCount > %arrow_limit_player uhcp_arrowCount run function uhcp:arrow_limit/recursion
