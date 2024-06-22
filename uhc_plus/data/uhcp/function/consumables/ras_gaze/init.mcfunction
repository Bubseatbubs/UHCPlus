kill @n[predicate=uhcp:ender_eye/ras_eye]

tag @s add UHCP_Check
execute as @e[tag=UHCP_RaLaser] if score @s uhcp_id = @p[tag=UHCP_Check] uhcp_id as @p[tag=UHCP_Check] at @s run return run function uhcp:consumables/ras_gaze/fail

summon minecraft:block_display ~ ~ ~ {CustomNameVisible:0b,teleport_duration:1,interpolation_duration:20,Tags:["UHCP_New","UHCP_RaLaser","UHCP_Summon"],CustomName:'[{"text":"Curse of Ra "},{"text":"a a a a a a a a a a a a a a","color":"dark_purple","obfuscated":true}]',brightness:{sky:15,block:15},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,-50f,0f],scale:[0f,1000f,0f]},block_state:{Name:"minecraft:fire"}}
playsound minecraft:ambient.basalt_deltas.mood master @a[distance=..128] ~ ~ ~ 1 0.5 0.25
title @a[distance=..16] title [{"text":"a a a","color":"dark_purple","obfuscated":true},{"text":" 𝕮𝖀𝕽𝕾𝕰 𝕺𝕱 𝕽𝕬 ","color":"#FFA200","bold":false,"italic":false,"obfuscated":false},{"text":"a a a","color":"dark_purple","obfuscated":true}]
execute as @a[distance=..16] at @s run playsound minecraft:entity.wither.spawn master @s ~ ~ ~ 0.5 0.75 0.5
execute as @a[distance=..16] at @s run playsound minecraft:item.trident.thunder master @s ~ ~ ~ 100 0.75 1
execute as @a[distance=..16] at @s run playsound minecraft:item.trident.thunder master @s ~ ~ ~ 100 0.75 1

# Assign ID if player doesn't have one already
execute unless score @s uhcp_id = @s uhcp_id run function uhcp:start/assign_id

# Bee owner is set to player
scoreboard players operation @n[tag=UHCP_New,tag=UHCP_RaLaser] uhcp_id = @s uhcp_id
scoreboard players operation @n[tag=UHCP_New,tag=UHCP_RaLaser] uhcp_team = @s uhcp_team
tag @e remove UHCP_New
tag @s remove UHCP_Check
