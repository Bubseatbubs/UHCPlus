effect give @s minecraft:resistance infinite 4 false

scoreboard players operation @s uhcp_game_time = %pvp_retain uhcp_settings
scoreboard players set @s[scores={uhcp_game_time=..-1}] uhcp_game_time 0
scoreboard players operation @s uhcp_aug_time = @s uhcp_game_time
scoreboard players remove @s uhcp_game_time 1200
scoreboard players set @s[scores={uhcp_game_time=..-1}] uhcp_game_time 0
