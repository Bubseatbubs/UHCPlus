scoreboard players operation @s uhcp_game_time = %time uhcp_game_time
scoreboard players add @s uhcp_game_time 200
execute if score %time uhcp_game_time matches 12000.. run return run scoreboard players set @s uhcp_game_time -1

execute store result score @s uhcp_initStatus run random value 0..5
execute if score @s uhcp_initStatus matches 1.. run return fail
execute at @s run summon creeper ^ ^ ^-5