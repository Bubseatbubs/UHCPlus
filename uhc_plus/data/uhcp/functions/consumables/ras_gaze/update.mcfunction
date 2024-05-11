scoreboard players add @s uhcp_timer 1
tag @s add UHCP_CurrentRaLaser

execute if score @s uhcp_timer matches 5 run data merge entity @s {start_interpolation:0,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-1.5f,-50f,-1.5f],scale:[3f,1000f,3f]}}
execute if score @s uhcp_timer matches 5 at @s as @a[distance=..32] at @s run playsound minecraft:block.beacon.activate master @s ~ ~ ~ 100 1 1
execute if score @s uhcp_timer matches 5 at @s as @a[distance=..32] at @s run playsound minecraft:entity.warden.sonic_boom master @s ~ ~ ~ 100 0.5 1
execute if score @s uhcp_timer matches 5 at @s as @a[distance=..32] at @s run playsound minecraft:block.conduit.activate master @s ~ ~ ~ 100 0.5 1
execute if score @s uhcp_timer matches 20 run particle minecraft:flash ~ ~ ~ 1 1 1 1 5 force
execute unless score @s uhcp_timer matches 20.. run return 0

tp @s ~ ~ ~ ~5 0
execute as @a[team=!grace_period,distance=..36,gamemode=survival] unless score @s uhcp_team = @e[tag=UHCP_CurrentRaLaser,sort=nearest,limit=1] uhcp_team run tag @s add UHCP_RaTarget
execute as @e[predicate=uhcp:targetable,distance=..36] if score @s uhcp_team = @e[tag=UHCP_CurrentRaLaser,sort=nearest,limit=1] uhcp_team run tag @s add UHCP_RaImmune
execute as @a[distance=..36,gamemode=survival] if score @s uhcp_id = @e[tag=UHCP_CurrentRaLaser,sort=nearest,limit=1] uhcp_id run tag @s remove UHCP_RaTarget
execute facing entity @p[tag=UHCP_RaTarget] feet run tp @s ^ ^ ^0.36
execute unless entity @a[tag=UHCP_RaTarget] facing entity @e[tag=!UHCP_Invulnerable,tag=!UHCP_RaImmune,type=!minecraft:player,type=!#uhcp:inanimate_mobs,distance=..32,sort=nearest,limit=1] feet run tp @s ^ ^ ^0.36

execute store result score %blocksfilled uhcp_titans_count run fill ~-2.5 ~-0.5 ~-2.5 ~2.5 ~128 ~2.5 minecraft:air replace #uhcp:breakable
execute store result score %blocksfilled uhcp_titans_count run fill ~-2.5 ~-1.5 ~-2.5 ~2.5 ~-1.5 ~2.5 minecraft:basalt replace #uhcp:breakable
execute if score %blocksfilled uhcp_titans_count matches 1.. run playsound minecraft:entity.wither.break_block master @a[distance=..16] ~ ~ ~ 1 1 0.5

execute as @a[distance=..8,gamemode=survival,nbt={OnGround:1b}] at @s run tp @s ~ ~0.074 ~
execute as @a[distance=8..16,gamemode=survival,nbt={OnGround:1b}] at @s run tp @s ~ ~0.044 ~
execute as @a[distance=16..36,gamemode=survival,nbt={OnGround:1b}] at @s run tp @s ~ ~0.024 ~
playsound minecraft:block.ancient_debris.break master @a[distance=..36] ~ ~ ~ 1 0.5 0.05
playsound minecraft:entity.iron_golem.hurt master @a[distance=..36] ~ ~ ~ 1 0.5 0.05
particle minecraft:campfire_cosy_smoke ~ ~ ~ 2 2 2 0.01 10 normal
particle minecraft:lava ~ ~ ~ 2 2 2 0.01 20 normal
execute as @e[predicate=uhcp:targetable,distance=..3] unless score @s uhcp_team = @e[tag=UHCP_CurrentRaLaser,sort=nearest,limit=1] uhcp_team run damage @s 10 uhcp:instant_damage by @e[tag=UHCP_RaLaser,sort=nearest,limit=1]
tag @a remove UHCP_RaTarget
tag @e remove UHCP_RaImmune

execute if score @s uhcp_timer matches 190 run data merge entity @s {interpolation_duration:10,start_interpolation:0,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,-50f,0f],scale:[0f,1000f,0f]}}
execute if score @s uhcp_timer matches 200 run particle minecraft:flash ~ ~ ~ 1 1 1 1 5 force
execute if score @s uhcp_timer matches 200 run kill @s
tag @s remove UHCP_CurrentRaLaser