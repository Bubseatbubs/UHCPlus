summon minecraft:item_display ~ ~ ~ {billboard:"fixed",start_interpolation:0,interpolation_duration:2,teleport_duration:3,Tags:["UHCP_New","UHCP_Summon","UHCP_PhantomSaber"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[1f,1f,1f]},item:{id:"minecraft:diamond_sword",count:1}}

# Owner is set to player
scoreboard players operation @n[tag=UHCP_New] uhcp_id = @s uhcp_id
tag @e remove UHCP_New
