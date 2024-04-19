execute unless predicate uhcp:titans/holding_shield_in_offhand run return run function uhcp:titans/fenrir/knock_shield_punish

summon minecraft:item ~ ~ ~ {Glowing:1b,PickupDelay:40s,Motion:[0.0,1.0,0.0],Tags:["UHCP_FenrirShield"],Item:{id:"minecraft:stone",Count:1b}}
data modify entity @e[type=item,limit=1,tag=UHCP_FenrirShield] Item set from entity @s Inventory[{Slot:-106b}]
item replace entity @s weapon.offhand with air 1
damage @s 0.00000001 generic by @e[tag=UHCP_Fenrir,sort=nearest,limit=1]
tag @e remove UHCP_FenrirShield
playsound minecraft:item.shield.block master @s ~ ~ ~ 1 1 1
particle minecraft:crit ~ ~ ~ 0.1 0.5 0.1 1 50 normal