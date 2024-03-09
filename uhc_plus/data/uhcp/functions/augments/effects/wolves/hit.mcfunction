advancement revoke @s only uhcp:augments/attacked_with_wolves

# Increase attack stacks
execute if score @s uhcp_a_selectedAugment matches 200 run scoreboard players add @s uhcp_wolf_stack 1

execute if score @s uhcp_wolf_stack matches ..5 run return 0

# Summon wolf
tag @s add UHCP_Owner

scoreboard players reset @e[distance=..5] uhcp_a_count
execute as @e[tag=!UHCP_Owner,tag=!UHCP_BeastWolf,type=!#uhcp:inanimate_mobs,distance=..5] store result score @s uhcp_a_count run function uhcp:augments/effects/wolves/checkattacker
tag @e[scores={uhcp_a_count=1},distance=..5,sort=nearest,limit=1] add UHCP_BeastWolfTarget
execute at @e[tag=UHCP_BeastWolfTarget,sort=nearest,limit=1] run function uhcp:augments/effects/wolves/summon
execute as @e[tag=UHCP_New,sort=nearest,limit=1] run data modify entity @s Owner set from entity @p[tag=UHCP_Owner] UUID
tag @s remove UHCP_Owner
tag @e remove UHCP_BeastWolfTarget
scoreboard players reset @e[distance=..5] uhcp_a_count

# Wolf is part of the squad
scoreboard players operation @e[tag=UHCP_BeastWolf,sort=nearest,limit=1] uhcp_team = @s uhcp_team

scoreboard players reset @s uhcp_wolf_stack
