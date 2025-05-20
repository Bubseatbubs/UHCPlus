# Add to score
execute if score @s uhcp_settings matches 404 run return run scoreboard players add %arrow_limit uhcp_arrowCount 1
execute if score @s uhcp_settings matches 405 run return run scoreboard players add %arrow_limit uhcp_arrowCount 5
execute if score @s uhcp_settings matches 406 run return run scoreboard players add %arrow_limit uhcp_arrowCount 15
execute if score @s uhcp_settings matches 407 run scoreboard players add %arrow_limit uhcp_arrowCount 100
