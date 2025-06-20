scoreboard players add @s uhcp_timer 1

# Start
rotate @s ~16 0
execute if score @s uhcp_timer matches 15 run function ssiege:titans/titan_spawn_effect/stage/start
execute if score @s uhcp_timer matches 15 run particle minecraft:flash ~ ~ ~ 1 1 1 1 5 force
execute unless score @s uhcp_timer matches 15.. run return 0

# Animation
execute as @a[distance=..8,gamemode=survival,predicate=uhcp:on_ground] at @s run tp @s ~ ~0.074 ~
execute as @a[distance=8..16,gamemode=survival,predicate=uhcp:on_ground] at @s run tp @s ~ ~0.044 ~
execute as @a[distance=16..36,gamemode=survival,predicate=uhcp:on_ground] at @s run tp @s ~ ~0.024 ~

# Effects and Sound
playsound minecraft:block.ancient_debris.break master @a[distance=..36] ~ ~ ~ 1 0.5 0.05
playsound minecraft:entity.iron_golem.hurt master @a[distance=..36] ~ ~ ~ 1 0.5 0.05
execute positioned over motion_blocking positioned ~ ~ ~ run particle minecraft:end_rod ~ ~ ~ 6 2 6 0.01 30 force
execute positioned over motion_blocking positioned ~ ~ ~ run particle minecraft:gust ~ ~ ~ 6 2 6 0.01 40 force

# End
data merge entity @s[scores={uhcp_timer=30}] {interpolation_duration:10,start_interpolation:0,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,-50f,0f],scale:[0f,1000f,0f]}}
execute at @s[scores={uhcp_timer=40}] run function ssiege:titans/titan_spawn_effect/stage/end