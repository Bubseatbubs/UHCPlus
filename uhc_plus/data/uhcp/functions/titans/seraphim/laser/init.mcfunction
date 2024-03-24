summon block_display ~ ~ ~ {CustomNameVisible:0b,teleport_duration:1,interpolation_duration:20,Tags:["UHCP_New","UHCP_SeraphimLaser","UHCP_Summon"],CustomName:'[{"text":"Seraphim\'s Holy Beam"}]',brightness:{sky:15,block:15},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,-50f,0f],scale:[0f,1000f,0f]},block_state:{Name:"minecraft:soul_fire"}}
playsound minecraft:ambient.basalt_deltas.mood master @a[distance=..128] ~ ~ ~ 1 0.5 0.25
execute as @a[distance=..16] at @s run playsound entity.wither.spawn master @s ~ ~ ~ 100 0.75 1

tag @e remove UHCP_New
tag @s remove UHCP_Check
