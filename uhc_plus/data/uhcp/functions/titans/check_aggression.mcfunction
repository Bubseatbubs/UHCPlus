scoreboard players reset %aggro uhcp_t_count
execute store result score %aggro uhcp_t_count run execute on target if entity @s[type=player]
execute if score %aggro uhcp_t_count matches 0 run return fail
execute if score %aggro uhcp_t_count matches 1 run return 1