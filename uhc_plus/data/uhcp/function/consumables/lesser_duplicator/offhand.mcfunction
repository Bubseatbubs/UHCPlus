execute unless items entity @s weapon.mainhand * run return fail
item replace entity @s weapon.offhand with minecraft:air

summon minecraft:item ~ ~ ~ {Glowing:true,PickupDelay:0s,Motion:[0.0d,0.2d,0.0d],Tags:["UHCP_DuplicatorItem"],Item:{id:"minecraft:stone"}}
data modify entity @n[type=minecraft:item,tag=UHCP_DuplicatorItem] Item.id set from entity @s SelectedItem.id
function uhcp:consumables/lesser_duplicator/init
