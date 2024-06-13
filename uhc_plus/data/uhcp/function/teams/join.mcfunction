# Assign target to team based on their score
team leave @s
execute if score %pvp uhcp_settings matches 1.. run return run team join grace_period @s
execute if score @s uhcp_team matches 1 run return run team join aqua @s
execute if score @s uhcp_team matches 2 run return run team join blue @s
execute if score @s uhcp_team matches 3 run return run team join dark_aqua @s
execute if score @s uhcp_team matches 4 run return run team join dark_blue @s
execute if score @s uhcp_team matches 5 run return run team join dark_gray @s
execute if score @s uhcp_team matches 6 run return run team join dark_green @s
execute if score @s uhcp_team matches 7 run return run team join dark_purple @s
execute if score @s uhcp_team matches 8 run return run team join dark_red @s
execute if score @s uhcp_team matches 9 run return run team join gold @s
execute if score @s uhcp_team matches 10 run return run team join gray @s
execute if score @s uhcp_team matches 11 run return run team join green @s
execute if score @s uhcp_team matches 12 run return run team join light_purple @s
execute if score @s uhcp_team matches 13 run return run team join red @s
execute if score @s uhcp_team matches 14 run team join yellow @s
