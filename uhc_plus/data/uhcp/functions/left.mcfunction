# Manage players whom left
execute unless score %game uhcp_initStatus matches 1.. run function uhcp:left/lobby
execute if score %game uhcp_initStatus matches 1 run function uhcp:left/identify

scoreboard players reset @s uhcp_leave
