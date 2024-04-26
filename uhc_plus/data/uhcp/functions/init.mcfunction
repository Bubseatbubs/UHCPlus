# Set scores
scoreboard players set %init uhcp_initStatus 1
scoreboard players set %lock uhcp_itemCount 50

# Dimension-specific commands
execute in minecraft:the_end run function uhcp:load/dimensions/minecraft/init/the_end
execute in minecraft:the_nether run function uhcp:load/dimensions/minecraft/init/the_nether
execute in minecraft:overworld run function uhcp:load/dimensions/minecraft/init/overworld
execute in uhcp:main run function uhcp:load/dimensions/uhcp/init/main

# Initialize necessary settings from scores
# Friendly fire
function uhcp:settings/reset/team/friendly_fire/toggle

# Difficulty
execute unless score %difficulty_def uhcp_settings matches 1.. run return run function uhcp:settings/reset/difficulty/easy
execute if score %difficulty_def uhcp_settings matches 1 run return run function uhcp:settings/reset/difficulty/normal
execute if score %difficulty_def uhcp_settings matches 2 run return run function uhcp:settings/reset/difficulty/hard
execute if score %difficulty_def uhcp_settings matches 3 run function uhcp:settings/reset/difficulty/peaceful
