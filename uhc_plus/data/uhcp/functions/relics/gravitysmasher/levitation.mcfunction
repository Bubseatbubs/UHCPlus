advancement revoke @s only uhcp:augments/hurt_with_gravity_smasher_passive
tag @s add UHCP_Owner

scoreboard players reset @e[distance=..6] uhcp_a_count
execute as @e[tag=!UHCP_Owner,type=!#uhcp:inanimate_mobs,distance=..6] store result score @s uhcp_a_count run function uhcp:relics/checkattacker
tag @e[distance=..6,scores={uhcp_a_count=1},sort=nearest,limit=1] add UHCP_GravTarget
execute as @e[tag=UHCP_GravTarget] run effect give @s levitation 1 0 false

tag @s remove UHCP_Owner
tag @e remove UHCP_GravTarget
tag @e remove UHCP_New
scoreboard players reset @e[distance=..6] uhcp_a_count