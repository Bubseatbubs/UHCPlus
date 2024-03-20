advancement revoke @s only uhcp:augments/wearing_armor_as_panda
playsound block.note_block.snare master @s ~ ~ ~ 1 1 1

tag @s add UHCP_Owner
execute as @e[tag=UHCP_StoredArmor] if score @s uhcp_id = @p[tag=UHCP_Owner] uhcp_id run tag @s add UHCP_CurrentStoredArmor

item replace entity @s armor.head from entity @e[tag=UHCP_CurrentStoredArmor,limit=1] armor.head
item replace entity @s armor.chest from entity @e[tag=UHCP_CurrentStoredArmor,limit=1] armor.chest
item replace entity @s armor.legs from entity @e[tag=UHCP_CurrentStoredArmor,limit=1] armor.legs
item replace entity @s armor.feet from entity @e[tag=UHCP_CurrentStoredArmor,limit=1] armor.feet

kill @e[tag=UHCP_CurrentStoredArmor,limit=1]
tag @s remove UHCP_Owner

