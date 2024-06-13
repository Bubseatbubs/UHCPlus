playsound minecraft:item.mace.smash_ground_heavy master @a[distance=..16] ~ ~ ~ 1 1 1
tag @s add UHCP_Owner

function uhcp:relics/windfall/piece/init
execute as @e[tag=UHCP_New,sort=nearest,limit=1] at @s rotated as @e[tag=UHCP_Owner,sort=nearest,limit=1] run tp @s ~ ~ ~ 60 0
tag @e remove UHCP_New

function uhcp:relics/windfall/piece/init
execute as @e[tag=UHCP_New,sort=nearest,limit=1] at @s rotated as @e[tag=UHCP_Owner,sort=nearest,limit=1] run tp @s ~ ~ ~ 180 0
tag @e remove UHCP_New

function uhcp:relics/windfall/piece/init
execute as @e[tag=UHCP_New,sort=nearest,limit=1] at @s rotated as @e[tag=UHCP_Owner,sort=nearest,limit=1] run tp @s ~ ~ ~ 300 0
tag @e remove UHCP_New

execute if score @s uhcp_aug_tier matches 1.. run function uhcp:relics/windfall/piece/create_pieces_2
execute if score @s uhcp_aug_tier matches 9.. run function uhcp:relics/windfall/piece/create_pieces_3
execute if score @s uhcp_aug_tier matches 17.. run function uhcp:relics/windfall/piece/create_pieces_4
execute if score @s uhcp_aug_tier matches 20.. run function uhcp:relics/windfall/piece/create_pieces_5

tag @s remove UHCP_Owner
