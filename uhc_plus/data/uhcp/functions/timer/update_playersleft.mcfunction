# Update Player Count
execute store result score %players uhcp_gameDisplay run execute if entity @a[gamemode=!creative,gamemode=!spectator]

execute if score %players uhcp_gameDisplay matches 6.. run scoreboard players display numberformat %players uhcp_gameDisplay styled {"color":"white"}
execute if score %players uhcp_gameDisplay matches ..5 run scoreboard players display numberformat %players uhcp_gameDisplay styled {"color":"red"}