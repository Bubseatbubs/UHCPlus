# Set scores
scoreboard players set %init uhcp_initStatus 1
scoreboard players set %lock uhcp_itemCount 50
execute store result score %global uhcp_game_id run random value 0..3
execute store result score %global uhcp_game_id run function uhcp:start/id/game

# Dimension-specific commands
execute in minecraft:the_end run function uhcp:load/dimensions/minecraft/init/the_end
execute in minecraft:the_nether run function uhcp:load/dimensions/minecraft/init/the_nether
execute in minecraft:overworld run function uhcp:load/dimensions/minecraft/init/overworld
execute in uhcp:main run function uhcp:load/dimensions/uhcp/init/main

# Initialize necessary settings from scores
# Friendly fire
function uhcp:settings/reset/team/friendly_fire/toggle

# Difficulty
function uhcp:settings/reset/difficulty

# Enchantment reduction
function uhcp:settings/reset/enchant_reduce
