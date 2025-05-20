# Return radiant relic
execute store result score @s uhcp_lava_currentLayers run loot give @s loot uhcp:relics/smooth_getaway/damaged_radiant
execute if score @s uhcp_lava_currentLayers matches 0 run return run function uhcp:relics/smooth_getaway/radiant/loot

execute if score @s uhcp_relic_sg_radiant matches 1 run return run scoreboard players set @s uhcp_relic_sg_radiant 0
scoreboard players remove @s uhcp_relic_sg_radiant 1
function uhcp:relics/smooth_getaway/radiant/return
