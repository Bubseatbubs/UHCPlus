# Kill entities (kill items last)
kill @e[type=!player,type=!#uhcp:inanimate_mobs]
kill @e[tag=UHCP_Summon]
kill @e[tag=UHCP_Titan]
kill @e[type=item]

# Within dimensions
execute in minecraft:overworld run function uhcp:reset/game/overworld
execute in minecraft:the_end run function uhcp:reset/game/the_end
execute in minecraft:the_nether run function uhcp:reset/game/the_nether

# Remove force loads
execute in uhcp:hell run forceload remove all
execute in uhcp:main run forceload remove all
execute in uhcp:main run forceload add 0 0

# Reset experience
experience set @a 0 levels
experience set @a 0 points

# Reset storages
data remove storage uhcp:compass Track

# Reset scores
scoreboard players reset @a uhcp_a_choosingAugment
scoreboard players reset @a uhcp_a_selectedAugment
scoreboard players reset %global uhcp_gameId
scoreboard players reset @a uhcp_gameId
scoreboard players reset %global uhcp_id
scoreboard players reset @a uhcp_id
scoreboard players reset %end uhcp_initStatus
scoreboard players reset %day uhcp_initStatus
scoreboard players reset %game uhcp_initStatus
scoreboard players reset %time uhcp_gameTime
scoreboard players reset %time uhcp_initStatus
scoreboard players reset %time_freeze uhcp_initStatus
scoreboard players reset %lava_start uhcp_initStatus
scoreboard players reset @a uhcp_lavaTimeInterval
scoreboard players reset @a uhcp_lavaMaxHeight
scoreboard players reset @a uhcp_team
scoreboard players reset @a uhcp_topCD
scoreboard players reset @a top

# Load border size
scoreboard players operation %border_size uhcp_settings = %border_size_retain uhcp_settings

# Load border countdown
scoreboard players operation %border_countdown uhcp_settings = %border_countdown_retain uhcp_settings

# Load border shrink speed
scoreboard players operation %border_shrink_speed uhcp_settings = %border_shrink_speed_retain uhcp_settings

# Load dimension countdown
scoreboard players operation %dimension uhcp_settings = %dimension_retain uhcp_settings

# Load PvP Grace Period countdown
scoreboard players operation %pvp uhcp_settings = %pvp_retain uhcp_settings

# Load lava scoreboard values
execute unless score %lava_init uhcp_initStatus matches 1 run function uhcp:reset/lava_scores
scoreboard players operation %lava_countdown uhcp_settings = %lava_countdown_retain uhcp_settings

# Load team values
scoreboard players operation %team_size uhcp_settings = %team_size_retain uhcp_settings
scoreboard players operation %team uhcp_settings = %team_retain uhcp_settings
scoreboard players operation %players_select_teams uhcp_settings = %players_select_teams_retain uhcp_settings

# Sidebar display
scoreboard objectives setdisplay sidebar

# Tags
tag @a remove UHCP_Spectator

# Players
clear @a
effect clear @a
effect give @a minecraft:instant_health 2 5 true
effect give @a minecraft:resistance infinite 5 true
effect give @a minecraft:saturation infinite 255 true
execute as @a run function uhcp:reset/attributes
experience set @a 0 levels
experience set @a 0 points
gamemode adventure @a
team leave @a

# Lobby Menu
scoreboard players set @a uhcp_ready 0
execute as @a at @s run function uhcp:lobby/menu

# Notify players of reset
title @a subtitle {"text":"RESET","color":"gray"}
title @a title [{"text":"[","color":"white"},{"text":"U","color":"#1921FF"},{"text":"H","color":"#3D8BFF"},{"text":"C","color":"#59B7FF"},{"text":" +","color":"#85EFFF"},{"text":"]","color":"white"}]
execute as @a at @s run playsound entity.enderman.teleport master @s ~ ~ ~ 1 1 1
execute as @a at @s run particle portal ~ ~ ~ 1 1 1 0.1 100 normal @s
execute as @a at @s run particle flash ~ ~ ~ 1 1 1 0.1 100 normal @s
