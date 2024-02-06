summon block_display ~ ~ ~ {HasVisualFire:1b,Tags:["UHCP_BoomburstDisplay"],transformation:{translation:[-0.5f,-1.0f,-0.5f],left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],scale:[1.0f,1.0f,1.0f]},block_state:{Name:"minecraft:tnt"}}
ride @e[tag=UHCP_BoomburstDisplay,sort=nearest,limit=1] mount @s
tag @s add UHCP_BoomburstInit