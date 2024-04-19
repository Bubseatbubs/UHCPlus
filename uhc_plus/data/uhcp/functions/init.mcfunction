# Set initialize scoreboard
scoreboard players set %init uhcp_initStatus 1

# Dimension-specific commands
execute in minecraft:the_end run function uhcp:load/dimensions/minecraft/init/the_end
execute in minecraft:the_nether run function uhcp:load/dimensions/minecraft/init/the_nether
execute in minecraft:overworld run function uhcp:load/dimensions/minecraft/init/overworld

# Summon initial player-locking armor stands
scoreboard players set %lock uhcp_itemCount 50
execute in uhcp:main run function uhcp:load/summon
