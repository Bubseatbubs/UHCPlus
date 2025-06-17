advancement revoke @s only ssiege:player_hit_entity/player_hit_blue_inhib
execute unless score %blue_warning_timer uhcp_game_time > %time uhcp_game_time run tellraw @a[team=blue] ["",{"text":"Your "},{"text":"Inhibitor","bold":true,"color":"blue"},{"text":" is under attack by "},{"selector":"@a[team=red,distance=..10]"},{"text":"!"}]
playsound minecraft:block.note_block.pling master @a[team=blue] ~ ~ ~ 1 2 1
scoreboard players operation %blue_warning_timer uhcp_game_time = %time uhcp_game_time
scoreboard players add %blue_warning_timer uhcp_game_time 200