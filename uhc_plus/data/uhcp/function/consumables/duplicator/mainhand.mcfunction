execute unless items entity @s weapon.offhand * run return fail
execute if items entity @s weapon.offhand *[minecraft:custom_data~{uhcp_consumable_id:0b}|minecraft:custom_data~{uhcp_consumable_id:2b}] run return fail
item replace entity @s weapon.mainhand with minecraft:air

summon minecraft:item ~ ~ ~ {Glowing:true,PickupDelay:0s,Motion:[0.0d,0.2d,0.0d],Tags:["UHCP_DuplicatorItem"],Item:{id:"minecraft:stone"}}
data modify entity @n[type=minecraft:item,tag=UHCP_DuplicatorItem] Item set from entity @s equipment.offhand
function uhcp:consumables/duplicator/init
