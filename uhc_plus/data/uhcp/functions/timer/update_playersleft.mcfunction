# Update Player Count
execute store result score %players uhcp_game_display run execute if entity @a[gamemode=!creative,gamemode=!spectator]

execute if score %players uhcp_game_display matches 6.. run scoreboard players display numberformat %players uhcp_game_display styled {"color":"white"}
execute if score %players uhcp_game_display matches ..5 run scoreboard players display numberformat %players uhcp_game_display styled {"color":"red"}