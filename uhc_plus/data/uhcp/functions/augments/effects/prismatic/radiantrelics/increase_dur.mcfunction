advancement revoke @s only uhcp:augments/holding_soulflame_saber
advancement revoke @s only uhcp:augments/holding_voltrune
scoreboard players reset %damage uhcp_a_durability

execute store result score %damage uhcp_a_durability run data get entity @s SelectedItem.tag.cDamage
scoreboard players add %damage uhcp_a_durability 223
execute store result storage uhcp:cd cDamage int 1 run scoreboard players add %damage uhcp_a_durability 0
execute at @s run playsound block.amethyst_block.resonate master @s ~ ~ ~ 1 2 1
item modify entity @s weapon.mainhand uhcp:update_dur