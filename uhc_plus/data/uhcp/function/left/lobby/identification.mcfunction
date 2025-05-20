# Reset scores related to player identification after game
execute if score @s uhcp_game_id = @s uhcp_game_id run return run function uhcp:left/lobby/id_reset
execute if score @s uhcp_top_cd = %global uhcp_game_id run return fail
scoreboard players operation @s uhcp_top_cd = %global uhcp_game_id
scoreboard players reset @s uhcp_id
scoreboard players reset @s uhcp_team
team leave @s
