advancement revoke @s only uhcp:augments/attacked_with_bees

# Increase attack stacks
execute if score @s uhcp_a_selectedAugment matches 0 run scoreboard players add @s uhcp_bee_stack 2
execute if score @s uhcp_a_selectedAugment matches 200 run scoreboard players add @s uhcp_bee_stack 2
execute if score @s uhcp_a_selectedAugment matches 237 run scoreboard players add @s uhcp_bee_stack 6

execute if score @s uhcp_bee_stack matches ..5 run return 0

# Summon bee
tag @s add UHCP_Owner

scoreboard players reset @e[distance=..5] uhcp_a_count
execute as @e[tag=!UHCP_Owner,tag=!UHCP_Bee,type=!#uhcp:inanimate_mobs,distance=..5] store result score @s uhcp_a_count run function uhcp:augments/effects/bees/checkattacker
tag @e[scores={uhcp_a_count=1},distance=..5,sort=nearest,limit=1] add UHCP_BeeTarget
execute at @e[tag=UHCP_BeeTarget,sort=nearest,limit=1] run function uhcp:augments/effects/bees/summon
tag @s remove UHCP_Owner
tag @e remove UHCP_BeeTarget
scoreboard players reset @e[distance=..5] uhcp_a_count

# Assign ID if player doesn't have one already
execute unless score @s uhcp_id = @s uhcp_id run function uhcp:start/id/assign

# Bee owner is set to player
scoreboard players operation @e[tag=UHCP_New,tag=UHCP_Bee,sort=nearest,limit=1] uhcp_id = @s uhcp_id
tag @e remove UHCP_New

# Bee Sin! :o
execute store result score %random uhcp_a_count run random value 1..100
execute if score %random uhcp_a_count matches 100 run data merge entity @e[tag=UHCP_Bee,sort=nearest,limit=1] {CustomName:'{"text":"Bee Sin","color":"gold"}',CustomNameVisible:1b}

scoreboard players reset @s uhcp_bee_stack
