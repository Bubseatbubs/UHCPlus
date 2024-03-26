summon block_display ~ ~ ~ {teleport_duration:1,Silent:1b,HasVisualFire:1b,shadow_radius:4.5f,shadow_strength:1f,start_interpolation:0,interpolation_duration:30,Tags:["UHCP_BuzzburstDisplay","UHCP_New"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-1.25f,-2.5f,-1.25f],scale:[2.5f,2.5f,2.5f]},block_state:{Name:"minecraft:bee_nest"}}
ride @e[tag=UHCP_BuzzburstDisplay,tag=UHCP_New,sort=nearest,limit=1] mount @e[tag=UHCP_CurrentBuzzburst,sort=nearest,limit=1]

# Launch Buzzburst
execute store result score @s uhcp_motion_x1 run data get entity @s Pos[0] 1000
execute store result score @s uhcp_motion_y1 run data get entity @s Pos[1] 1000
execute store result score @s uhcp_motion_z1 run data get entity @s Pos[2] 1000

execute rotated as @p[tag=UHCP_Owner] run tp @s ^ ^ ^0.2 ~ ~30

execute store result score @s uhcp_motion_x2 run data get entity @s Pos[0] 1000
execute store result score @s uhcp_motion_y2 run data get entity @s Pos[1] 1000
execute store result score @s uhcp_motion_z2 run data get entity @s Pos[2] 1000

execute store result entity @s Motion[0] double 0.01 run scoreboard players operation @s uhcp_motion_x2 -= @s uhcp_motion_x1
execute store result entity @s Motion[1] double 0.01 run scoreboard players operation @s uhcp_motion_y2 -= @s uhcp_motion_y1
execute store result entity @s Motion[2] double 0.01 run scoreboard players operation @s uhcp_motion_z2 -= @s uhcp_motion_z1

tag @s remove UHCP_CurrentBuzzburst