# Increase attack stacks
execute unless score @s uhcp_a_selectedAugment matches 0 run return 0
scoreboard players add @s uhcp_a_stack 1

execute if score @s uhcp_a_stack matches ..2 run return 0

# Summon bee
tag @s add UHCP_Owner

scoreboard players reset @e[distance=..5] uhcp_a_count
execute as @e[tag=!UHCP_Owner,tag=!UHCP_Bee,type=!#uhcp:inanimate_mobs,distance=..5] store result score @s uhcp_a_count run function uhcp:augments/effects/gold/beekeeper/checkattacker
tag @e[scores={uhcp_a_count=1},distance=..5,sort=nearest,limit=1] add UHCP_BeeTarget
execute at @e[tag=UHCP_BeeTarget,sort=nearest,limit=1] run playsound block.beehive.enter master @a[distance=..9] ~ ~ ~ 1 1 0.5
execute at @e[tag=UHCP_BeeTarget,sort=nearest,limit=1] run particle falling_honey ~ ~2 ~ 0.25 0.5 0.25 0.1 15 normal
execute at @e[tag=UHCP_BeeTarget,sort=nearest,limit=1] run summon bee ~ ~ ~ {AngerTime:1000,Health:1f,HasNectar:0b,HasStung:0b,Tags:["UHCP_Summon","UHCP_Bee"],Attributes:[{Name:"generic.attack_damage",Base:4}]}
tag @s remove UHCP_Owner
tag @e remove UHCP_BeeTarget
scoreboard players reset @e[distance=..5] uhcp_a_count

# Assign Team Scoreboards
execute if entity @a[predicate=uhcp:teams/solo] run function uhcp:teams/solo
execute if entity @a[predicate=uhcp:teams/team] run function uhcp:teams/team
scoreboard players set @a[predicate=uhcp:teams/neither] uhcp_team 0
scoreboard players set @a[gamemode=!survival] uhcp_team 0

# Bee is part of the squad
execute store result score @e[tag=UHCP_Bee,sort=nearest,limit=1] uhcp_team run scoreboard players get @s uhcp_team
execute if entity @a[predicate=uhcp:teams/solo] run function uhcp:teams/solojoin
execute if entity @a[predicate=uhcp:teams/team] run function uhcp:teams/teamjoin

# Bee Sin!
execute store result score %random uhcp_a_count run random value 1..100
execute if score %random uhcp_a_count matches 100 run data merge entity @e[tag=UHCP_Bee,sort=nearest,limit=1] {CustomName:'{"text":"Bee Sin","color":"gold"}',CustomNameVisible:1b}

scoreboard players reset @s uhcp_a_stack