advancement revoke @s only uhcp:relics/holding_soulflame_saber
advancement revoke @s only uhcp:relics/holding_voltrune
advancement revoke @s only uhcp:relics/holding_gravity_smasher
advancement revoke @s only uhcp:relics/holding_harvester
advancement revoke @s only uhcp:relics/holding_boomburst
advancement revoke @s only uhcp:relics/holding_smooth_getaway
advancement revoke @s only uhcp:relics/holding_threadoffate
advancement revoke @s only uhcp:relics/holding_light
advancement revoke @s only uhcp:relics/holding_dark
scoreboard players reset %damage uhcp_a_durability

execute store result score %damage uhcp_a_durability run data get entity @s SelectedItem.tag.cDamage
scoreboard players add %damage uhcp_a_durability 223
execute if entity @s[nbt={SelectedItem:{tag:{uhcp_radiant:8b}}}] run scoreboard players add %damage uhcp_a_durability 297
execute if entity @s[nbt={SelectedItem:{id:"minecraft:diamond_axe",Count:1b}}] run scoreboard players remove %damage uhcp_a_durability 93
execute if entity @s[nbt={SelectedItem:{id:"minecraft:brush",Count:1b}}] run scoreboard players remove %damage uhcp_a_durability 110
execute if entity @s[nbt={SelectedItem:{id:"minecraft:crossbow",Count:1b}}] run scoreboard players remove %damage uhcp_a_durability 119
execute if entity @s[nbt={SelectedItem:{id:"minecraft:shears",Count:1b}}] run scoreboard players add %damage uhcp_a_durability 400
execute store result storage uhcp:cd cDamage int 1 run scoreboard players add %damage uhcp_a_durability 0
execute at @s run playsound block.amethyst_block.resonate master @s ~ ~ ~ 1 2 1
item modify entity @s weapon.mainhand uhcp:update_dur