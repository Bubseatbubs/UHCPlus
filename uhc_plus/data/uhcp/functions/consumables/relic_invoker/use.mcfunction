clear @s *[custom_data~{uhcp_consumable:3b}] 1
function uhcp:entity/items/loot/summon
loot replace entity @e[type=minecraft:item,tag=UHCP_NewLoot,sort=nearest,limit=1] contents loot uhcp:relics
function uhcp:entity/items/loot/finish
playsound minecraft:entity.breeze.death master @s ~ ~ ~ 1 0.5 1
playsound minecraft:block.bell.resonate master @s ~ ~ ~ 1 2 1
particle minecraft:end_rod ~ ~1 ~ 0.25 0.25 0.25 0.1 25 normal
particle minecraft:enchant ~ ~1 ~ 0.5 0.5 0.5 0.1 80 normal