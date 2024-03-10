# Assign ID if player doesn't have one already
execute unless score @s uhcp_id = @s uhcp_id run function uhcp:start/id/assign

execute in uhcp:main run setblock 8 -10 8 air
execute in uhcp:main run item replace block 0 0 0 container.0 with air
clone ~ ~-0.5 ~ ~ ~-0.5 ~ to uhcp:main 8 -10 8 replace
execute in uhcp:main run loot replace block 0 0 0 container.0 mine 8 -10 8 diamond_pickaxe[minecraft:enchantments={levels:{"minecraft:silk_touch":1}}]
execute at @s run summon block_display ~ ~ ~ {teleport_duration:1,Tags:["UHCP_Prop","UHCP_Summon","UHCP_New"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0.0f,0.0f,0.0f],scale:[1f,1f,1f]},block_state:{Name:"minecraft:air"}}
scoreboard players operation @e[tag=UHCP_New,sort=nearest,limit=1] uhcp_id = @s uhcp_id
execute in uhcp:main run data modify entity @e[tag=UHCP_New,limit=1] block_state.Name set from block 0 0 0 Items[0].id
tag @e remove UHCP_New