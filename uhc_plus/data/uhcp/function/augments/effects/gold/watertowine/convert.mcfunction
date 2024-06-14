function uhcp:entity/items/loot/summon
loot replace entity @n[type=minecraft:item,tag=UHCP_NewLoot] contents loot uhcp:augments/watertowine
function uhcp:entity/items/loot/finish

scoreboard players remove @s uhcp_initStatus 1
execute unless score @s uhcp_initStatus matches ..0 run function uhcp:augments/effects/gold/watertowine/convert
