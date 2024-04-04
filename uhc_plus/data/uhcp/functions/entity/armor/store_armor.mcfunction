playsound block.note_block.snare master @s ~ ~ ~ 1 1 1
tag @s add UHCP_Owner

execute as @e[tag=UHCP_StoredArmor] if score @s uhcp_id = @p[tag=UHCP_Owner] uhcp_id run tag @s add UHCP_ReturnArmor
execute as @e[tag=UHCP_ReturnArmor] if score @s uhcp_id = @p[tag=UHCP_Owner] uhcp_id as @p[tag=UHCP_Owner] at @s run function uhcp:entity/armor/reload_armor

execute in uhcp:main run summon armor_stand 0 32 0 {Marker:1b,NoGravity:1b,Invulnerable:1b,Tags:["UHCP_StoredArmor","UHCP_New"]}

execute if items entity @s armor.head * run item replace entity @e[tag=UHCP_StoredArmor,tag=UHCP_New] armor.head from entity @s armor.head
execute if items entity @s armor.chest * run item replace entity @e[tag=UHCP_StoredArmor,tag=UHCP_New] armor.chest from entity @s armor.chest
execute if items entity @s armor.legs * run item replace entity @e[tag=UHCP_StoredArmor,tag=UHCP_New] armor.legs from entity @s armor.legs
execute if items entity @s armor.feet * run item replace entity @e[tag=UHCP_StoredArmor,tag=UHCP_New] armor.feet from entity @s armor.feet
execute if items entity @s weapon.offhand * run item replace entity @e[tag=UHCP_StoredArmor,tag=UHCP_New] weapon.offhand from entity @s weapon.offhand

item replace entity @s armor.head with minecraft:air
item replace entity @s armor.chest with minecraft:air
item replace entity @s armor.legs with minecraft:air
item replace entity @s armor.feet with minecraft:air
item replace entity @s weapon.offhand with minecraft:air


execute as @e[tag=UHCP_StoredArmor,tag=UHCP_New] run scoreboard players operation @s uhcp_id = @p[tag=UHCP_Owner] uhcp_id
tag @e remove UHCP_New
tag @s remove UHCP_Owner

tag @s add UHCP_DisableArmorAndOffhand
