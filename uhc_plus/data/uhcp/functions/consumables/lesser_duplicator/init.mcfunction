execute unless items entity @s weapon.offhand * run return 0
execute if items entity @s weapon.offhand enchanted_book run return 0
execute if items entity @s weapon.offhand *[custom_data~{uhcp_consumable:0b}|custom_data~{uhcp_consumable:2b}] run return 0

clear @s *[custom_data~{uhcp_consumable:2b}] 1
summon minecraft:item ~ ~ ~ {Glowing:1b,PickupDelay:0s,Motion:[0.0,0.2,0.0],Tags:["UHCP_DuplicatorItem"],Item:{id:"minecraft:stone",Count:1b}}
data modify entity @e[type=item,limit=1,tag=UHCP_DuplicatorItem] Item.id set from entity @s Inventory[{Slot:-106b}].id
data modify entity @e[type=item,limit=1,tag=UHCP_DuplicatorItem] Item.count set value 1

playsound entity.breeze.death master @s ~ ~ ~ 1 0.5 1
playsound block.bell.resonate master @s ~ ~ ~ 1 2 1
particle end_rod ~ ~1 ~ 0.25 0.25 0.25 0.1 25 normal
particle enchant ~ ~1 ~ 0.5 0.5 0.5 0.1 80 normal