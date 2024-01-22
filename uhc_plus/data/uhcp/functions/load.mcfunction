# Add Scoreboard Objectives
scoreboard objectives add hunger trigger
scoreboard objectives add menu trigger
scoreboard objectives add top trigger
scoreboard objectives add uhcp_gameTime dummy
scoreboard objectives add uhcp_hungerTimer dummy
scoreboard objectives add uhcp_initStatus dummy
scoreboard objectives add uhcp_itemCount dummy
scoreboard objectives add uhcp_itemInv dummy
scoreboard objectives add uhcp_lavaCurrentHeight dummy
scoreboard objectives add uhcp_lavaCurrentLayers dummy
scoreboard objectives add uhcp_lavaHeight dummy
scoreboard objectives add uhcp_lavaMaxHeight dummy
scoreboard objectives add uhcp_lavaTime dummy
scoreboard objectives add uhcp_lavaTimeInterval dummy
scoreboard objectives add uhcp_settings dummy
scoreboard objectives add uhcp_team dummy
scoreboard objectives add uhcp_topDelay dummy
scoreboard objectives add uhcp_topCharge dummy
scoreboard objectives add uhcp_topCD dummy
scoreboard objectives add uhcp_a_tier dummy
scoreboard objectives add uhcp_a_count dummy
scoreboard objectives add uhcp_a_validSelection dummy
scoreboard objectives add uhcp_a_selectedAugment dummy

# Add bossbars
bossbar add uhcp_topcharge "Time Until Teleport:"
bossbar set minecraft:uhcp_topcharge color purple
bossbar set minecraft:uhcp_topcharge style notched_6
bossbar set minecraft:uhcp_topcharge max 60

# Set default lava scores
execute unless score stage status matches 2 unless score %uhcp_time uhcp_gameTime matches 1.. unless score %uhcp_lavaInit uhcp_initStatus matches 1 run function uhcp:load/scores

# Forceload main dimension
execute in uhcp:main run forceload add 0 0

# Schedule delayed load
scoreboard players add %uhcp_loadInit uhcp_initStatus 1
execute unless score %uhcp_loadInit uhcp_initStatus matches 2.. run schedule function uhcp:load 20t
execute if score %uhcp_loadInit uhcp_initStatus matches 2.. run function uhcp:load/message
