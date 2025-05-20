# Version of relic that runs in lobby
execute store result score @s uhcp_initStatus run data get entity @s Pos[1]
execute unless score @s uhcp_initStatus matches 273..282 run return fail
tag @s add UHCP_Owner

execute positioned ~ ~1.5 ~ summon minecraft:item_display run function uhcp:relics/voltrune/display
playsound minecraft:block.enchantment_table.use player @a[distance=..6] ~ ~ ~ 1.0 0.6 1.0
playsound minecraft:entity.blaze.death player @a[distance=..6] ~ ~ ~ 1.0 2.0 1.0

tag @s remove UHCP_Owner
scoreboard players reset @e[distance=..6] uhcp_aug_count
scoreboard players reset @s uhcp_aug_stack
