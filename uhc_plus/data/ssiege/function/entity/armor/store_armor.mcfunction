tag @s add UHCP_Owner

execute as @e[tag=UHCP_StoredArmor] if score @s uhcp_id = @p[tag=UHCP_Owner] uhcp_id run return run tag @a remove UHCP_Owner
playsound minecraft:block.note_block.snare master @s ~ ~ ~ 1 1 1

execute in uhcp:main run summon minecraft:armor_stand 0 32 0 {Marker:true,NoGravity:true,Invulnerable:true,Tags:["UHCP_StoredArmor","UHCP_NewStore"]}

execute if items entity @s armor.head * run item replace entity @e[tag=UHCP_NewStore] armor.head from entity @s armor.head
execute if items entity @s armor.chest * run item replace entity @e[tag=UHCP_NewStore] armor.chest from entity @s armor.chest
execute if items entity @s armor.legs * run item replace entity @e[tag=UHCP_NewStore] armor.legs from entity @s armor.legs
execute if items entity @s armor.feet * run item replace entity @e[tag=UHCP_NewStore] armor.feet from entity @s armor.feet
execute if items entity @s weapon.offhand * run item replace entity @e[tag=UHCP_NewStore] weapon.offhand from entity @s weapon.offhand

item replace entity @s armor.head with minecraft:air
item replace entity @s armor.chest with minecraft:air
item replace entity @s armor.legs with minecraft:air
item replace entity @s armor.feet with minecraft:air
item replace entity @s weapon.offhand with minecraft:air

scoreboard players operation @e[tag=UHCP_NewStore] uhcp_id = @s uhcp_id
tag @e remove UHCP_NewStore
tag @s remove UHCP_Owner
tag @s add UHCP_DisableArmorAndOffhand
