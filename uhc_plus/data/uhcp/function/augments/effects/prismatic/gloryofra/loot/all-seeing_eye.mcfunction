# Redundancy
function uhcp:entity/items/loot/summon
loot replace entity @n[type=minecraft:item,tag=UHCP_NewLoot] contents loot uhcp:consumables/all-seeing_eye
scoreboard players set @s uhcp_lava_timeInterval 30
scoreboard players operation @s uhcp_lava_timeInterval -= @s uhcp_lava_currentLayers
execute store result entity @n[type=minecraft:item,tag=UHCP_NewLoot] Item.count int 1 run scoreboard players get @s uhcp_lava_timeInterval
tag @e remove UHCP_NewLoot
