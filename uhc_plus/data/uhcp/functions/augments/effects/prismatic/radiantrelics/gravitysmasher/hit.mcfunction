advancement revoke @s only uhcp:augments/hurt_with_iron_axe
tag @s add UHCP_Owner

scoreboard players reset @e[distance=..6] uhcp_a_count
execute as @e[tag=!UHCP_Owner,type=!#uhcp:inanimate_mobs,distance=..6] store result score @s uhcp_a_count run function uhcp:augments/effects/prismatic/radiantrelics/checkattacker
tag @e[distance=..6,scores={uhcp_a_count=1},sort=nearest,limit=1] add UHCP_GravTarget
execute at @e[tag=UHCP_GravTarget] anchored eyes run summon shulker_bullet ~ ~5 ~ {Motion:[0.0,-1.0,0.0],Steps:6,Glowing:1b,Tags:["UHCP_New"]}
data modify entity @e[tag=UHCP_New,type=shulker_bullet,sort=nearest,limit=1] Target set from entity @e[tag=UHCP_GravTarget,sort=nearest,limit=1] UUID
data modify entity @e[tag=UHCP_New,type=shulker_bullet,sort=nearest,limit=1] Owner set from entity @e[tag=UHCP_Owner,sort=nearest,limit=1] UUID
execute at @e[tag=UHCP_New,type=shulker_bullet,sort=nearest,limit=1] run playsound minecraft:entity.shulker.shoot player @a[distance=..12] ~ ~ ~ 1.0 0.6 0.75

scoreboard players add @s uhcp_a_stack 1

tag @s remove UHCP_Owner
tag @e remove UHCP_GravTarget
tag @e remove UHCP_New
scoreboard players reset @e[distance=..6] uhcp_a_count

execute if score @s uhcp_a_stack matches 2 run playsound block.note_block.pling master @s ~ ~ ~ 1 1 1
execute if score @s uhcp_a_stack matches ..2 run return 0
tag @s add UHCP_Owner

# Assign Team Scoreboards
execute if entity @a[predicate=uhcp:teams/solo] run function uhcp:teams/solo
execute if entity @a[predicate=uhcp:teams/team] run function uhcp:teams/team
scoreboard players set @a[predicate=uhcp:teams/neither] uhcp_team 0
scoreboard players set @a[gamemode=!survival] uhcp_team 0

execute at @s run playsound entity.breeze.shoot master @a[distance=..12] ~ ~ ~ 1 1 0.5
execute at @s run particle cloud ~ ~ ~ 6 0.1 6 1 300 normal
execute at @s as @e[type=!#uhcp:inanimate_mobs,distance=..6] run particle cloud ~ ~ ~ 0.1 1 0.1 0.1 50 normal
execute at @s as @e[type=player,distance=..6] unless score @s uhcp_team = @a[tag=UHCP_Owner,sort=nearest,limit=1] uhcp_team run summon armor_stand ~ ~ ~ {Invulnerable:1b,Invisible:1b,Small:1b,Silent:1b,Motion:[0.0,1.0,0.0],Tags:["UHCP_Temp"]}
execute at @s as @e[type=player,distance=..6] unless score @s uhcp_team = @a[tag=UHCP_Owner,sort=nearest,limit=1] uhcp_team run ride @s mount @e[tag=UHCP_Temp,type=armor_stand,sort=nearest,limit=1,distance=..1]
execute at @s as @e[type=!player,type=!#uhcp:inanimate_mobs,distance=..10] unless score @s uhcp_team = @a[tag=UHCP_Owner,sort=nearest,limit=1] uhcp_team run data merge entity @s {Motion:[0.0,1.5,0.0]}


scoreboard players reset @s uhcp_a_stack
tag @s remove UHCP_Owner
