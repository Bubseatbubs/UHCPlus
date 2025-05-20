# Redundancy
function uhcp:entity/items/loot/summon
loot replace entity @n[type=minecraft:item,tag=UHCP_NewLoot] contents loot uhcp:radiant_relics
tag @e remove UHCP_NewLoot

scoreboard players add @s uhcp_lava_currentLayers 1
execute unless score @s uhcp_lava_currentLayers matches 2 run function uhcp:augments/effects/prismatic/gloryofra/loot/radiant_relic
