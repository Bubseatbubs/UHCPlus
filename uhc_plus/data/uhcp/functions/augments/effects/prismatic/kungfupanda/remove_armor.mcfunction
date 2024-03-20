advancement revoke @s only uhcp:augments/wearing_armor_as_panda
tellraw @s {"text":"Pandas can't wear Armor! Your Armor was removed!","color":"dark_red"}
playsound block.note_block.snare master @s ~ ~ ~ 1 1 1

execute as @s[nbt={Inventory:[{Slot:103b}]}] run summon item ~ ~ ~ {PickupDelay:0,Tags:["UHCP_PandaArmorHead"],Item:{id:"minecraft:stone",Count:1b}}
execute as @s[nbt={Inventory:[{Slot:103b}]}] run data modify entity @e[tag=UHCP_PandaArmorHead,sort=nearest,limit=1] Item set from entity @s Inventory[{Slot:103b}]

execute as @s[nbt={Inventory:[{Slot:102b}]}] run summon item ~ ~ ~ {PickupDelay:0,Tags:["UHCP_PandaArmorChest"],Item:{id:"minecraft:stone",Count:1b}}
execute as @s[nbt={Inventory:[{Slot:102b}]}] run data modify entity @e[tag=UHCP_PandaArmorChest,sort=nearest,limit=1] Item set from entity @s Inventory[{Slot:102b}]

execute as @s[nbt={Inventory:[{Slot:101b}]}] run summon item ~ ~ ~ {PickupDelay:0,Tags:["UHCP_PandaArmorLegs"],Item:{id:"minecraft:stone",Count:1b}}
execute as @s[nbt={Inventory:[{Slot:101b}]}] run data modify entity @e[tag=UHCP_PandaArmorLegs,sort=nearest,limit=1] Item set from entity @s Inventory[{Slot:101b}]

execute as @s[nbt={Inventory:[{Slot:100b}]}] run summon item ~ ~ ~ {PickupDelay:0,Tags:["UHCP_PandaArmorFeet"],Item:{id:"minecraft:stone",Count:1b}}
execute as @s[nbt={Inventory:[{Slot:100b}]}] run data modify entity @e[tag=UHCP_PandaArmorFeet,sort=nearest,limit=1] Item set from entity @s Inventory[{Slot:100b}]

execute as @s[nbt={Inventory:[{Slot:-106b}]}] run summon item ~ ~ ~ {PickupDelay:0,Tags:["UHCP_PandaArmorOffhand"],Item:{id:"minecraft:stone",Count:1b}}
execute as @s[nbt={Inventory:[{Slot:-106b}]}] run data modify entity @e[tag=UHCP_PandaArmorOffhand,sort=nearest,limit=1] Item set from entity @s Inventory[{Slot:-106b}]

item replace entity @s armor.head with minecraft:air
item replace entity @s armor.chest with minecraft:air
item replace entity @s armor.legs with minecraft:air
item replace entity @s armor.feet with minecraft:air
item replace entity @s weapon.offhand with minecraft:air

