scoreboard players operation @s uhcp_game_time = %time uhcp_game_time
scoreboard players add @s uhcp_game_time 200
execute if score %time uhcp_game_time matches 12000.. run return run scoreboard players set @s uhcp_game_time -1

execute store result score @s uhcp_initStatus run random value 0..5
execute if score @s uhcp_initStatus matches 1.. run return fail

execute at @s positioned ^ ^ ^ rotated ~ 0 run function ssiege:augments/effects/gold/stayalert/spawn_helper