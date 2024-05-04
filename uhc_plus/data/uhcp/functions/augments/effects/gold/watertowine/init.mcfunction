execute store result score %potion uhcp_aug_count run clear @s minecraft:potion[minecraft:potion_contents={potion:"minecraft:water"}] 1
execute if score %potion uhcp_aug_count matches 0 run return 0

function uhcp:entity/items/loot/summon
loot replace entity @e[type=item,tag=UHCP_NewLoot,sort=nearest,limit=1] contents loot uhcp:augments/watertowine
function uhcp:entity/items/loot/finish

execute unless score %potion uhcp_aug_count matches 0 run function uhcp:augments/effects/gold/watertowine/init