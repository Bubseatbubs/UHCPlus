# Reset player whom is not part of game as spectator
gamemode spectator @s
scoreboard players operation @s uhcp_gameId = %global uhcp_gameId
scoreboard players set @s uhcp_team 0
team leave @s
execute in minecraft:overworld run tp @s 0 150 0
effect clear @s
effect give @s minecraft:night_vision infinite 0 true
tellraw @s {"text":"You are spectating the current match.","color":"red"}
