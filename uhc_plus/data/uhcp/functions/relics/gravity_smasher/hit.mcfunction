advancement revoke @s only uhcp:relics/gravity_smasher/ability
tag @s add UHCP_Owner

# Set Cooldown
execute store result storage uhcp:cd cDamage int 1 run scoreboard players set %damage uhcp_a_durability 10
item modify entity @s weapon.mainhand uhcp:update_dur

# Assign Team Scoreboards
scoreboard players set @a uhcp_initStatus 0
execute as @a[gamemode=survival] run scoreboard players operation @s uhcp_initStatus = @s uhcp_team

tag @s add UHCP_Owner

# Knock Up Nearby Mobs/Players
execute at @s run playsound entity.breeze.shoot master @a[distance=..12] ~ ~ ~ 1 1 0.5
execute at @s run particle cloud ~ ~ ~ 6 0.1 6 1 300 normal
execute at @s as @e[type=!#uhcp:inanimate_mobs,distance=..6] run particle cloud ~ ~ ~ 0.1 1 0.1 0.1 50 normal
execute at @s as @e[type=player,distance=..6,scores={uhcp_initStatus=1..}] unless score @s uhcp_initStatus = @a[tag=UHCP_Owner,sort=nearest,limit=1] uhcp_initStatus at @s run summon armor_stand ~ ~ ~ {Invulnerable:1b,Invisible:1b,Small:1b,Silent:1b,Motion:[0.0,1.0,0.0],Tags:["UHCP_GravitySmasher","UHCP_Summon","UHCP_New"]}
scoreboard players operation @e[distance=..6,type=armor_stand,tag=UHCP_New] uhcp_initStatus = @s uhcp_initStatus
execute at @s as @e[type=player,distance=..6,scores={uhcp_initStatus=1..}] unless score @s uhcp_initStatus = @a[tag=UHCP_Owner,sort=nearest,limit=1] uhcp_initStatus at @s run ride @s mount @e[tag=UHCP_GravitySmasher,type=armor_stand,sort=nearest,limit=1,distance=..1]
execute at @s as @e[type=!player,type=!#uhcp:inanimate_mobs,distance=..10] unless score @s uhcp_initStatus = @a[tag=UHCP_Owner,sort=nearest,limit=1] uhcp_initStatus run data merge entity @s {Motion:[0.0,1.75,0.0]}

tag @s remove UHCP_Owner
tag @e remove UHCP_New
