advancement revoke @s only ssiege:player_hit_red_inhib
execute unless score %red_warning_timer uhcp_game_time > %time uhcp_game_time run tellraw @a[team=red] ["",{"text":"Your "},{"text":"Inhibitor","bold":true,"color":"red"},{"text":" is under attack!"}]
scoreboard players operation %red_warning_timer uhcp_game_time = %time uhcp_game_time
scoreboard players add %red_warning_timer uhcp_game_time 200