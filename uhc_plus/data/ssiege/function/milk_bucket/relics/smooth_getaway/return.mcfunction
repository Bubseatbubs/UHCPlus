# Return relic
execute store result score @s uhcp_lava_currentLayers run loot give @s loot uhcp:relics/smooth_getaway/damaged
execute if score @s uhcp_lava_currentLayers matches 0 run return run function uhcp:relics/smooth_getaway/loot

execute if score @s uhcp_relic_sg matches 1 run return run scoreboard players set @s uhcp_relic_sg 0
scoreboard players remove @s uhcp_relic_sg 1
function uhcp:relics/smooth_getaway/return
