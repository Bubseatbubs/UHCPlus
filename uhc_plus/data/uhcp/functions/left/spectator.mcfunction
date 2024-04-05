# Reset player whom is not part of game as spectator
clear @s
gamemode spectator @s
scoreboard players operation @s uhcp_game_ID = %global uhcp_game_ID
scoreboard players set @s uhcp_team 0
scoreboard players reset @s uhcp_augment
team leave @s
scoreboard players reset @s patron
scoreboard players reset @s team
scoreboard players reset @s testkit
scoreboard players reset @s top
tag @s remove UHCP_Died
execute in minecraft:overworld run tp @s 0 150 0
effect clear @s
effect give @s minecraft:night_vision infinite 0 true
function uhcp:reset/attributes
experience set @s 0 levels
experience set @s 0 points
tellraw @s {"text":"You are spectating the current match.","color":"red"}

# Assign ID
scoreboard players add %global uhcp_id 1
scoreboard players operation @s uhcp_id = %global uhcp_id

# Create bossbar
execute unless score %players uhcp_id matches ..0 run function uhcp:left/spectator/bossbar
