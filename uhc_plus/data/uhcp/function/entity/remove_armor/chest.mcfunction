summon minecraft:item ~ ~ ~ {PickupDelay:40s,Tags:["UHCP_ArmorChest"],Item:{id:"minecraft:iron_chestplate"}}
data modify entity @n[tag=UHCP_ArmorChest] Item set from entity @s equipment.chest
item replace entity @s armor.chest with minecraft:air
tag @e remove UHCP_ArmorChest
