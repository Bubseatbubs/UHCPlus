function uhcp:entity/items/loot/summon
loot replace entity @e[type=minecraft:item,tag=UHCP_NewLoot,sort=nearest,limit=1] contents loot uhcp:relics/smooth_getaway/damaged_radiant
function uhcp:entity/items/loot/finish

tag @s remove UHCP_ShadowClone