# Redundancy
function uhcp:entity/items/loot/summon
loot replace entity @n[type=minecraft:item,tag=UHCP_NewLoot] contents loot uhcp:consumables/suspicious_bamboo_sugar
tag @e remove UHCP_NewLoot
