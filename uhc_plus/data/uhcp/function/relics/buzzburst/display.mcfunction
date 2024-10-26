# Summoned Buzzburst display
data merge entity @s {teleport_duration:1,Silent:1b,HasVisualFire:1b,shadow_radius:4.5f,shadow_strength:1f,start_interpolation:0,interpolation_duration:30,Tags:["UHCP_BuzzburstDisplay"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-1.25f,-2.5f,-1.25f],scale:[2.5f,2.5f,2.5f]},block_state:{Name:"minecraft:bee_nest"}}
ride @s mount @e[tag=UHCP_CurrentBuzzburst,limit=1]
scoreboard players operation @s uhcp_id = @a[tag=UHCP_Owner,limit=1] uhcp_id
scoreboard players operation @s uhcp_team = @a[tag=UHCP_Owner,limit=1] uhcp_team
