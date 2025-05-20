# Reset scores related to player identification after game
scoreboard players operation @s uhcp_top_cd = %global uhcp_game_id
scoreboard players reset @s uhcp_game_id
scoreboard players reset @s uhcp_id
scoreboard players reset @s uhcp_team
team leave @s
