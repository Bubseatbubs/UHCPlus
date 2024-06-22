execute unless predicate uhcp:titans/holding_shield_in_offhand run return run function uhcp:titans/ferrum/knock_shield_punish

summon minecraft:item ~ ~ ~ {Glowing:1b,PickupDelay:40s,Motion:[0.0d,1.0d,0.0d],Tags:["UHCP_FerrumShield"],Item:{id:"minecraft:stone"}}
data modify entity @e[type=minecraft:item,limit=1,tag=UHCP_FerrumShield] Item set from entity @s Inventory[{Slot:-106b}]
item replace entity @s weapon.offhand with air 1
damage @s 0.00000001 minecraft:generic by @n[tag=UHCP_Ferrum]
tag @e remove UHCP_FerrumShield
playsound minecraft:item.shield.block master @s ~ ~ ~ 1 1 1
particle minecraft:crit ~ ~ ~ 0.1 0.5 0.1 1 50 normal
