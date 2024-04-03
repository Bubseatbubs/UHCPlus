advancement revoke @s only uhcp:relics/smooth_getaway/finish
playsound block.note_block.snare master @s ~ ~ ~ 1 1 1

tag @s add UHCP_Owner
execute as @e[tag=UHCP_StoredArmor] if score @s uhcp_id = @p[tag=UHCP_Owner] uhcp_id run tag @s add UHCP_CurrentStoredArmor

item replace entity @s armor.head from entity @e[tag=UHCP_CurrentStoredArmor,limit=1] armor.head
item replace entity @s armor.chest from entity @e[tag=UHCP_CurrentStoredArmor,limit=1] armor.chest
item replace entity @s armor.legs from entity @e[tag=UHCP_CurrentStoredArmor,limit=1] armor.legs
item replace entity @s armor.feet from entity @e[tag=UHCP_CurrentStoredArmor,limit=1] armor.feet
item replace entity @s weapon.offhand from entity @e[tag=UHCP_CurrentStoredArmor,limit=1] weapon.offhand

kill @e[tag=UHCP_CurrentStoredArmor,limit=1]
tag @s remove UHCP_Owner
tag @s remove UHCP_SmoothGetaway

execute if score @s uhcp_augment matches 239 run return run loot give @s loot uhcp:relics/smooth_getaway/damaged_shadow_ninjitsu
loot give @s loot uhcp:relics/smooth_getaway/damaged

