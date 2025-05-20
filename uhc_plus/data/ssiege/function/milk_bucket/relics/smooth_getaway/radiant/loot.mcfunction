# Redundancy
function uhcp:entity/items/loot/summon
loot replace entity @n[type=minecraft:item,tag=UHCP_NewLoot] contents loot uhcp:relics/smooth_getaway/damaged_radiant
tag @e remove UHCP_NewLoot

execute if score @s uhcp_relic_sg_radiant matches 1 run return run scoreboard players set @s uhcp_relic_sg_radiant 0
scoreboard players remove @s uhcp_relic_sg_radiant 1
function uhcp:relics/smooth_getaway/radiant/loot
