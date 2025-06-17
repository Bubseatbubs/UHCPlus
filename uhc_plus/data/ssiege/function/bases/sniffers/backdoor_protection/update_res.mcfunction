tag @s add SSIEGE_sniffer_check

function ssiege:bases/sniffers/backdoor_protection/apply_res

scoreboard players set %nearby uhcp_initStatus 0
execute as @a[distance=..26,gamemode=survival] unless score @s uhcp_team = @n[tag=SSIEGE_sniffer_check] uhcp_team run scoreboard players add %nearby uhcp_initStatus 1
execute if score %nearby uhcp_initStatus matches ..1 run return fail

scoreboard players operation @s uhcp_game_time = %time uhcp_game_time
scoreboard players operation @s uhcp_game_time += #200 uhcp_const

tag @s remove SSIEGE_sniffer_check