summon minecraft:block_display ~ ~ ~ {teleport_duration:1,Silent:1b,HasVisualFire:1b,shadow_radius:4.5f,shadow_strength:1f,start_interpolation:0,interpolation_duration:30,Tags:["UHCP_BuzzburstDisplay","UHCP_New"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-1.25f,-2.5f,-1.25f],scale:[2.5f,2.5f,2.5f]},block_state:{Name:"minecraft:bee_nest"}}
ride @n[tag=UHCP_BuzzburstDisplay,tag=UHCP_New] mount @n[tag=UHCP_CurrentBuzzburst]

# Launch Buzzburst
execute as @e[tag=UHCP_Motion,limit=1] at @s rotated as @p[tag=UHCP_Owner] run tp @s ^ ^ ^0.1
execute store result entity @s Motion[0] double 0.00002 run data get entity @e[tag=UHCP_Motion,limit=1] Pos[0] 1000000
execute store result entity @s Motion[1] double 0.00002 run data get entity @e[tag=UHCP_Motion,limit=1] Pos[1] 1000000
execute store result entity @s Motion[2] double 0.00002 run data get entity @e[tag=UHCP_Motion,limit=1] Pos[2] 1000000
execute in uhcp:main run tp @e[tag=UHCP_Motion] 0.0 0.0 0.0

tag @s remove UHCP_CurrentBuzzburst
