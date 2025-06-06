# Proc on-death effects of Augments

# Grand Gunpowder / Hunter's Blessing Creeper Buff
execute as @s[tag=UHCP_Explode] run summon minecraft:creeper ~ ~ ~ {Fuse:0s,CanPickUpLoot:false}
execute as @s[tag=UHCP_Explode] run tag @s remove UHCP_Explode
execute as @s[tag=UHCP_Explode] run tellraw @s ["",{"text":"The "},{"text":"Grand Gunpowder","bold":true,"color":"light_purple"},{"text":" made you "},{"text":"explod","bold":true,"color":"yellow"},{"text":"e","color":"yellow"},{"text":"!"}]