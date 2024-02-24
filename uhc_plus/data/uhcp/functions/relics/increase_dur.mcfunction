advancement revoke @s through uhcp:relics/increase_dur
scoreboard players reset %damage uhcp_a_durability

execute store result score %damage uhcp_a_durability run data get entity @s SelectedItem.tag.cDamage
scoreboard players add %damage uhcp_a_durability 223
execute if entity @s[nbt={SelectedItem:{tag:{uhcp_radiant:8b}}}] run scoreboard players add %damage uhcp_a_durability 297
execute if entity @s[nbt={SelectedItem:{id:"minecraft:diamond_sword",Count:1b}}] run scoreboard players remove %damage uhcp_a_durability 136
execute if entity @s[nbt={SelectedItem:{id:"minecraft:golden_sword",Count:1b}}] run scoreboard players remove %damage uhcp_a_durability 136
execute if entity @s[nbt={SelectedItem:{id:"minecraft:diamond_axe",Count:1b}}] run scoreboard players remove %damage uhcp_a_durability 93
execute if entity @s[nbt={SelectedItem:{id:"minecraft:brush",Count:1b}}] run scoreboard players remove %damage uhcp_a_durability 93
execute if entity @s[nbt={SelectedItem:{id:"minecraft:shears",Count:1b}}] run scoreboard players add %damage uhcp_a_durability 400
execute store result storage uhcp:cd cDamage int 1 run scoreboard players add %damage uhcp_a_durability 0
execute at @s run playsound block.amethyst_block.resonate master @s ~ ~ ~ 1 2 1
item modify entity @s weapon.mainhand uhcp:update_dur