# Redundancy
function uhcp:entity/items/loot/summon
loot replace entity @n[type=minecraft:item,tag=UHCP_NewLoot] contents loot uhcp:augments/sundisk
execute if score @s uhcp_lava_currentLayers matches 1 run return run tag @e remove UHCP_NewLoot

data modify entity @n[type=minecraft:item,tag=UHCP_NewLoot] Item.count set value 2
tag @e remove UHCP_NewLoot
