execute if score %temp uhcp_initStatus matches 1 run team join blue @s
execute if score %temp uhcp_initStatus matches -1 run team join red @s
scoreboard players operation %temp uhcp_initStatus *= #-1 uhcp_const