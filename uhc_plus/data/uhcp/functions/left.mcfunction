# Manage players whom left
execute unless score %uhcp_gameStart uhcp_initStatus matches 1.. run function uhcp:left/lobby
execute if score %uhcp_gameStart uhcp_initStatus matches 1 run function uhcp:left/identify

scoreboard players reset @s uhcp_leave
