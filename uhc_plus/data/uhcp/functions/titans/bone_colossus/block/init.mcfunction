playsound entity.elder_guardian.curse master @a[distance=..16] ~ ~ ~ 1 1 1
execute at @a[distance=..16] at @s run playsound block.bone_block.place master @s ~ ~ ~ 1 1 1
execute at @a[distance=..16] at @s run playsound block.bone_block.place master @s ~ ~ ~ 1 1 1
execute at @a[distance=..16] at @s run playsound block.bone_block.place master @s ~ ~ ~ 1 1 1
execute as @a[distance=..16] at @s run playsound block.anvil.place master @s ~ ~4 ~ 100 1 1
execute at @a[distance=..16,gamemode=survival] run summon armor_stand ~ ~15 ~ {NoGravity:0b,Silent:1b,Small:1b,Invisible:1b,Tags:["UHCP_New","UHCP_BoneBlock","UHCP_Summon"],Passengers:[{id:"minecraft:block_display",NoGravity:0b,Tags:["UHCP_BBDisplay"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-1.5f,-1.5f,-1.5f],scale:[3f,3f,3f]},Glowing:1b,shadow_radius:15f,shadow_strength:1f,block_state:{Name:"minecraft:bone_block"}}]}