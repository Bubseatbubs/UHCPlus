# Manage new player
execute unless score %uhcp_gameStart uhcp_initStatus matches 1.. run function uhcp:left/lobby
execute if score %uhcp_gameStart uhcp_initStatus matches 1 run function uhcp:left/spectator

scoreboard players reset @s uhcp_leave
tag @s add UHCP_Player
