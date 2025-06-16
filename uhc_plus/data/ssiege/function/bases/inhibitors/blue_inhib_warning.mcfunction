advancement revoke @s only ssiege:player_hit_entity/player_hit_blue_inhib
execute unless score %blue_warning_timer uhcp_game_time > %time uhcp_game_time run tellraw @a[team=blue] ["",{"text":"Your "},{"text":"Inhibitor","bold":true,"color":"blue"},{"text":" is under attack!"}]
scoreboard players operation %blue_warning_timer uhcp_game_time = %time uhcp_game_time
scoreboard players add %blue_warning_timer uhcp_game_time 200