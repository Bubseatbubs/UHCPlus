advancement revoke @s only uhcp:augments/attacked_with_bees

# Increase attack stacks
scoreboard players add @s uhcp_aug_count 1

execute if score @s uhcp_aug_count matches ..2 run return 0

# Summon bee
tag @s add UHCP_Owner

scoreboard players reset @e[distance=..5] uhcp_aug_count
execute as @e[tag=!UHCP_Owner,tag=!UHCP_Bee,type=!#uhcp:inanimate_mobs,distance=..5] store result score @s uhcp_aug_count run function uhcp:relics/checkattacker
tag @n[scores={uhcp_aug_count=1},distance=..5] add UHCP_BeeTarget
execute at @n[tag=UHCP_BeeTarget] run function uhcp:entity/bees/summon
tag @s remove UHCP_Owner
tag @e remove UHCP_BeeTarget
scoreboard players reset @e[distance=..5] uhcp_aug_count

# Assign ID if player doesn't have one already
execute unless score @s uhcp_id = @s uhcp_id run function uhcp:start/id/assign

# Bee owner is set to player
scoreboard players operation @n[tag=UHCP_New,tag=UHCP_Bee] uhcp_id = @s uhcp_id
tag @e remove UHCP_New

# Bee Sin! :o
execute store result score %random uhcp_aug_count run random value 1..100
execute if score %random uhcp_aug_count matches 100 run data merge entity @n[tag=UHCP_Bee] {CustomName:'{"text":"Bee Sin","color":"gold"}',CustomNameVisible:1b}

scoreboard players reset @s uhcp_aug_count
