# Lower arrow limit
execute if score @s uhcp_settings matches 400 run return run scoreboard players remove %arrow_limit uhcp_arrowCount 1
execute if score @s uhcp_settings matches 401 run return run scoreboard players remove %arrow_limit uhcp_arrowCount 5
execute if score @s uhcp_settings matches 402 run return run scoreboard players remove %arrow_limit uhcp_arrowCount 15
execute if score @s uhcp_settings matches 403 run scoreboard players remove %arrow_limit uhcp_arrowCount 100
