summon block_display ~ ~ ~ {HasVisualFire:1b,shadow_radius:4.5f,shadow_strength:1f,billboard:"center",start_interpolation:0,interpolation_duration:30,Tags:["UHCP_BoomburstDisplay"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-1.25f,-2.5f,-1.25f],scale:[2.5f,2.5f,2.5f]},block_state:{Name:"minecraft:bee_nest"}}
ride @e[tag=UHCP_BoomburstDisplay,sort=nearest,limit=1] mount @s
execute at @s run playsound entity.bee.hurt master @a[distance=..12] ~ ~ ~ 1 1 0.25
execute at @s run playsound block.beehive.enter master @a[distance=..12] ~ ~ ~ 1 1 0.25
execute at @s run playsound item.crossbow.shoot master @a[distance=..12] ~ ~ ~ 1 1 0.25
tag @s add UHCP_BoomburstInit