# Redundancy
function uhcp:entity/items/loot/summon
loot replace entity @n[type=minecraft:item,tag=UHCP_NewLoot] contents loot uhcp:relics/web_o_rang/damaged
tag @e remove UHCP_NewLoot
