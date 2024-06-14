function uhcp:entity/items/loot/summon
loot replace entity @n[type=minecraft:item,tag=UHCP_NewLoot] contents loot uhcp:radiant_relics
function uhcp:entity/items/loot/finish

function uhcp:entity/items/loot/summon
loot replace entity @n[type=minecraft:item,tag=UHCP_NewLoot] contents loot uhcp:radiant_relics
function uhcp:entity/items/loot/finish
tellraw @s ["You've gained 2 ",{"text":"Radiant Relics","bold":true,"color":"light_purple"}," from your ",{"text":"Radiant Blessing","bold":true,"color":"aqua"},"!"]