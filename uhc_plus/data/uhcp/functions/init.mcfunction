# Set scores
scoreboard players set %init uhcp_initStatus 1
scoreboard players set %lock uhcp_itemCount 50

# Dimension-specific commands
execute in minecraft:the_end run function uhcp:load/dimensions/minecraft/init/the_end
execute in minecraft:the_nether run function uhcp:load/dimensions/minecraft/init/the_nether
execute in minecraft:overworld run function uhcp:load/dimensions/minecraft/init/overworld
execute in uhcp:main run function uhcp:load/dimensions/uhcp/init/main
