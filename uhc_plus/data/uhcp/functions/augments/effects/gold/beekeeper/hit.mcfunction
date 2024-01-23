# Increase attack stacks
advancement revoke @s only uhcp:augments/beekeeper
execute unless entity @s[tag=UHCP_BeeKeeper] run return 0
scoreboard players add @s uhcp_a_beeKeeper 1

execute if score @s uhcp_a_beeKeeper matches ..2 run return 0

# Summon bee
tag @s add UHCP_Owner
execute at @s run playsound entity.bee.pollinate master @a[distance=..4] ~ ~ ~ 1 1 0.5
execute at @s as @e[tag=!UHCP_Bee,type=!#uhcp:inanimate_mobs,distance=..5] store result score @s uhcp_a_count run function uhcp:augments/effects/gold/beekeeper/checkattacker
execute at @e[scores={uhcp_a_count=1}] run particle falling_honey ~ ~2 ~ 0.5 0.5 0.5 0.1 20 normal
execute at @e[scores={uhcp_a_count=1}] run summon bee ~ ~ ~ {Health:5f,HasNectar:0b,HasStung:0b,AngerTime:200000,Tags:["UHCP_Bee"],Attributes:[{Name:"generic.max_health",Base:1},{Name:"generic.follow_range",Base:50},{Name:"generic.movement_speed",Base:0.75},{Name:"generic.attack_damage",Base:5}]}
tag @s remove UHCP_Owner
scoreboard players reset @e[distance=..5] uhcp_a_count

# Assign Team Scoreboards
execute if entity @a[predicate=uhcp:teams/solo] run function uhcp:teams/solo
execute if entity @a[predicate=uhcp:teams/team] run function uhcp:teams/team
scoreboard players set @a[predicate=uhcp:teams/neither] uhcp_team 0
scoreboard players set @a[gamemode=!survival] uhcp_team 0

# Bee is part of the squad
execute at @s store result score @e[tag=UHCP_Bee,limit=1,sort=nearest] uhcp_team run scoreboard players get @s uhcp_team
execute if entity @a[predicate=uhcp:teams/solo] run function uhcp:teams/solojoin
execute if entity @a[predicate=uhcp:teams/team] run function uhcp:teams/teamjoin

# Bee Sin!
execute store result score %random uhcp_a_count run random value 1..100
execute at @s if score %random uhcp_a_count matches 100 run data merge entity @e[tag=UHCP_Bee,limit=1,sort=nearest] {CustomName:'{"text":"Bee Sin","color":"gold"}',CustomNameVisible:1b}

scoreboard players reset @s uhcp_a_beeKeeper