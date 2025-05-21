scoreboard players add @s uhcp_timer 1
tag @s add UHCP_CurrentLaser

data merge entity @s[scores={uhcp_timer=5}] {start_interpolation:0,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-1.5f,-50f,-1.5f],scale:[2f,1000f,2f]}}
execute at @s[scores={uhcp_timer=5}] as @a[distance=..32] at @s run playsound minecraft:block.beacon.activate master @s ~ ~ ~ 100 2 1
execute at @s[scores={uhcp_timer=5}] as @a[distance=..32] at @s run playsound minecraft:entity.warden.sonic_boom master @s ~ ~ ~ 100 0.5 1
execute if score @s uhcp_timer matches 20 run particle minecraft:flash ~ ~ ~ 1 1 1 1 5 force
execute unless score @s uhcp_timer matches 20.. run return 0

rotate @s ~5 0
execute as @a[distance=..36,gamemode=survival] run tag @s add UHCP_LaserTarget
execute facing entity @p[tag=UHCP_LaserTarget] feet run tp @s ^ ^ ^0.24

scoreboard players set %containers uhcp_settings 0
fill ~-1.5 ~-0.5 ~-1.5 ~1.5 ~128 ~1.5 minecraft:air replace #uhcp:containers destroy
fill ~-1.5 ~-1.5 ~-1.5 ~1.5 ~-1.5 ~1.5 minecraft:smooth_quartz replace #uhcp:containers destroy
fill ~-1.5 ~-0.5 ~-1.5 ~1.5 ~128 ~1.5 minecraft:air replace #uhcp:visible_breakable
execute store success score %blocksfilled uhcp_titans_count run fill ~-1.5 ~-1.5 ~-1.5 ~1.5 ~-1.5 ~1.5 minecraft:smooth_quartz replace #uhcp:no_fluids_breakable
scoreboard players set %containers uhcp_settings 1
execute if score %blocksfilled uhcp_titans_count matches 1 run playsound minecraft:entity.wither.break_block master @a[distance=..16] ~ ~ ~ 1 1 0.5

playsound minecraft:block.ancient_debris.break master @a[distance=..36] ~ ~ ~ 1 0.5 0.05
playsound minecraft:entity.guardian.hurt master @a[distance=..36] ~ ~ ~ 1 0.5 0.05
particle minecraft:glow ~ ~ ~ 2 2 2 0.01 10 normal
particle minecraft:glow_squid_ink ~ ~ ~ 2 2 2 0.01 15 normal
execute as @a[distance=..2] run damage @s 4 uhcp:instant_damage by @n[tag=UHCP_CurrentLaser]
tag @a remove UHCP_LaserTarget

data merge entity @s[scores={uhcp_timer=45}] {interpolation_duration:10,start_interpolation:0,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,-50f,0f],scale:[0f,1000f,0f]}}
execute if score @s uhcp_timer matches 50 run particle minecraft:flash ~ ~ ~ 1 1 1 1 5 force
kill @s[scores={uhcp_timer=50}]
tag @s remove UHCP_CurrentLaser
