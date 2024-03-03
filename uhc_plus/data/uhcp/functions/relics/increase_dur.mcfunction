advancement revoke @s through uhcp:relics/increase_dur
scoreboard players reset %damage uhcp_a_durability

execute store result score %damage uhcp_a_durability run data get entity @s SelectedItem.components."minecraft:custom_data".cDamage
scoreboard players add %damage uhcp_a_durability 223
execute if predicate uhcp:relics/mainhand/luminous_night run scoreboard players add %damage uhcp_a_durability 297
execute if predicate uhcp:relics/mainhand/soulflame_saber run scoreboard players remove %damage uhcp_a_durability 136
execute if predicate uhcp:relics/mainhand/flux_factor run scoreboard players remove %damage uhcp_a_durability 136
execute if predicate uhcp:relics/mainhand/gravity_smasher run scoreboard players remove %damage uhcp_a_durability 93
execute if predicate uhcp:relics/mainhand/smooth_getaway run scoreboard players remove %damage uhcp_a_durability 93
execute if predicate uhcp:relics/mainhand/thread_of_fate run scoreboard players add %damage uhcp_a_durability 400
execute store result storage uhcp:cd cDamage int 1 run scoreboard players add %damage uhcp_a_durability 0
execute at @s run playsound block.amethyst_block.resonate master @s ~ ~ ~ 1 2 1
item modify entity @s weapon.mainhand uhcp:update_dur
