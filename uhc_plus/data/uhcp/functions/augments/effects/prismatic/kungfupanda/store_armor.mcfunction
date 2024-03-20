advancement revoke @s only uhcp:augments/wearing_armor_as_panda
playsound block.note_block.snare master @s ~ ~ ~ 1 1 1

execute as @e[tag=UHCP_StoredArmor] if score @s uhcp_id = @p[tag=UHCP_Owner] uhcp_id run kill @s
execute in uhcp:main run summon giant 0 32 0 {NoGravity:1b,Invulnerable:1b,Tags:["UHCP_StoredArmor","UHCP_New"]}

execute as @s[nbt={Inventory:[{Slot:103b}]}] run item replace entity @e[tag=UHCP_StoredArmor,tag=UHCP_New] armor.head from entity @s armor.head
execute as @s[nbt={Inventory:[{Slot:102b}]}] run item replace entity @e[tag=UHCP_StoredArmor,tag=UHCP_New] armor.chest from entity @s armor.chest
execute as @s[nbt={Inventory:[{Slot:101b}]}] run item replace entity @e[tag=UHCP_StoredArmor,tag=UHCP_New] armor.legs from entity @s armor.legs
execute as @s[nbt={Inventory:[{Slot:100b}]}] run item replace entity @e[tag=UHCP_StoredArmor,tag=UHCP_New] armor.feet from entity @s armor.feet

item replace entity @s armor.head with minecraft:air
item replace entity @s armor.chest with minecraft:air
item replace entity @s armor.legs with minecraft:air
item replace entity @s armor.feet with minecraft:air

tag @s add UHCP_Owner
execute as @e[tag=UHCP_StoredArmor,tag=UHCP_New] run scoreboard players operation @s uhcp_id = @p[tag=UHCP_Owner] uhcp_id
tag @e remove UHCP_New
tag @s remove UHCP_Owner
