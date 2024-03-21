advancement revoke @s only uhcp:relics/smooth_getaway/wearing_armor
tellraw @s {"text":"You can't equip Armor right now!","color":"dark_red"}
playsound block.note_block.snare master @s ~ ~ ~ 1 1 1

execute as @s[nbt={Inventory:[{Slot:103b}]}] run summon item ~ ~ ~ {PickupDelay:0,Tags:["UHCP_MirageArmorHead"],Item:{id:"minecraft:stone",Count:1b}}
execute as @s[nbt={Inventory:[{Slot:103b}]}] run data modify entity @e[tag=UHCP_MirageArmorHead,sort=nearest,limit=1] Item set from entity @s Inventory[{Slot:103b}]

execute as @s[nbt={Inventory:[{Slot:102b}]}] run summon item ~ ~ ~ {PickupDelay:0,Tags:["UHCP_MirageArmorChest"],Item:{id:"minecraft:stone",Count:1b}}
execute as @s[nbt={Inventory:[{Slot:102b}]}] run data modify entity @e[tag=UHCP_MirageArmorChest,sort=nearest,limit=1] Item set from entity @s Inventory[{Slot:102b}]

execute as @s[nbt={Inventory:[{Slot:101b}]}] run summon item ~ ~ ~ {PickupDelay:0,Tags:["UHCP_MirageArmorLegs"],Item:{id:"minecraft:stone",Count:1b}}
execute as @s[nbt={Inventory:[{Slot:101b}]}] run data modify entity @e[tag=UHCP_MirageArmorLegs,sort=nearest,limit=1] Item set from entity @s Inventory[{Slot:101b}]

execute as @s[nbt={Inventory:[{Slot:100b}]}] run summon item ~ ~ ~ {PickupDelay:0,Tags:["UHCP_MirageArmorFeet"],Item:{id:"minecraft:stone",Count:1b}}
execute as @s[nbt={Inventory:[{Slot:100b}]}] run data modify entity @e[tag=UHCP_MirageArmorFeet,sort=nearest,limit=1] Item set from entity @s Inventory[{Slot:100b}]

execute as @s[nbt={Inventory:[{Slot:-106b}]}] run summon item ~ ~ ~ {PickupDelay:0,Tags:["UHCP_MirageArmorOffhand"],Item:{id:"minecraft:stone",Count:1b}}
execute as @s[nbt={Inventory:[{Slot:-106b}]}] run data modify entity @e[tag=UHCP_MirageArmorOffhand,sort=nearest,limit=1] Item set from entity @s Inventory[{Slot:-106b}]

item replace entity @s armor.head with minecraft:air
item replace entity @s armor.chest with minecraft:air
item replace entity @s armor.legs with minecraft:air
item replace entity @s armor.feet with minecraft:air
item replace entity @s weapon.offhand with minecraft:air

