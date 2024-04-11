# Reset player whom is not part of game as spectator
# Scores
scoreboard players reset @s lobby
scoreboard players reset @s patron
scoreboard players reset @s team
scoreboard players reset @s testkit
scoreboard players reset @s top
scoreboard players reset @s uhcp_augment
scoreboard players reset @s uhcp_lobby_item
scoreboard players set @s uhcp_team 0

# Remove tags
tag @s remove UHCP_ChoosingItem
tag @s remove UHCP_Died

# Assign IDs
scoreboard players operation @s uhcp_game_ID = %global uhcp_game_ID
scoreboard players add %global uhcp_id 1
scoreboard players operation @s uhcp_id = %global uhcp_id

# Create Titan health bossbar
execute unless score %players uhcp_id matches ..0 run function uhcp:left/spectator/bossbar

# Augment countdown bossbar
execute if score %augment_countdown uhcp_game_time matches 1.. run bossbar set uhcp:augment players @a

# Manage player
gamemode spectator @s
clear @s
function uhcp:reset/attributes
effect clear @s
effect give @s minecraft:night_vision infinite 0 true
experience set @s 0 levels
experience set @s 0 points
team leave @s
execute in minecraft:overworld run tp @s 0 150 0
tellraw @s {"text":"You are spectating the current match.","color":"red"}
