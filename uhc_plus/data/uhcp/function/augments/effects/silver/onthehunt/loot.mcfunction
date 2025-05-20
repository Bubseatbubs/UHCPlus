# Redundancy
function uhcp:entity/items/loot/summon
loot replace entity @n[type=minecraft:item,tag=UHCP_NewLoot] contents loot uhcp:player_compass
tag @e remove UHCP_NewLoot
