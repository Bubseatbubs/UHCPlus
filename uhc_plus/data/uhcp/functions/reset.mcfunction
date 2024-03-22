# Kill entities (kill items last)

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

# Scoreboards
function uhcp:settings/reset/reset
scoreboard players reset @a uhcp_a_choosingAugment
scoreboard players reset @a uhcp_a_selectedAugment
scoreboard players reset %global uhcp_gameId
scoreboard players reset @a uhcp_gameId
scoreboard players reset %global uhcp_id
scoreboard players reset @a uhcp_id
scoreboard players reset %game uhcp_initStatus
scoreboard players reset %time uhcp_gameTime
scoreboard players reset %time uhcp_initStatus
scoreboard players reset @a uhcp_lavaTimeInterval
scoreboard players reset @a uhcp_lavaMaxHeight
scoreboard players reset @a uhcp_team
scoreboard players reset @a uhcp_topCD
scoreboard players reset @a top

# Sidebar
scoreboard objectives setdisplay sidebar

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

# Notify players of reset
# Title and sound, probably.
