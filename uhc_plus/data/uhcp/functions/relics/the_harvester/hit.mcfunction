advancement revoke @s only uhcp:relics/the_harvester/ability
tag @s add UHCP_Owner
#Get Player Gapple amount

scoreboard players reset @e[distance=..6] uhcp_a_count
execute as @e[tag=!UHCP_Owner,type=!#uhcp:inanimate_mobs,distance=..6] store result score @s uhcp_a_count run function uhcp:relics/checkattacker
tag @e[distance=..6,scores={uhcp_a_count=1},sort=nearest,limit=1] add UHCP_HarvesterTarget

# Stop function if no targets are near
execute unless entity @e[tag=UHCP_HarvesterTarget] run tag @s remove UHCP_Owner
execute unless entity @e[tag=UHCP_HarvesterTarget] run return 0

execute store result storage uhcp:cd cDamage int 1 run scoreboard players set %damage uhcp_a_durability 100
item modify entity @s weapon.mainhand uhcp:update_dur

execute store result score @s uhcp_a_count run clear @s golden_apple 0
execute store result score %e_gapple uhcp_a_count run clear @s enchanted_golden_apple 0

scoreboard players operation @s uhcp_a_count += %e_gapple uhcp_a_count 

# Scale size of block display with gapple amount
execute if score @s uhcp_a_count matches 0 at @e[tag=UHCP_HarvesterTarget] anchored eyes run summon armor_stand ~ ~5 ~ {NoGravity:0b,Silent:1b,Small:1b,Invisible:1b,Tags:["UHCP_New","UHCP_GoldBlock","UHCP_Summon"],Passengers:[{id:"minecraft:block_display",NoGravity:0b,Tags:["UHCP_GBDisplay"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-1f,-1f,-1f],scale:[2f,2f,2f]},block_state:{Name:"minecraft:gold_block"}}]}
execute if score @s uhcp_a_count matches 1..4 at @e[tag=UHCP_HarvesterTarget] anchored eyes run summon armor_stand ~ ~5 ~ {NoGravity:0b,Silent:1b,Small:1b,Invisible:1b,Tags:["UHCP_New","UHCP_GoldBlock","UHCP_Summon"],Passengers:[{id:"minecraft:block_display",NoGravity:0b,Tags:["UHCP_GBDisplay"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-1.25f,-1.25f,-1.25f],scale:[2.5f,2.5f,2.5f]},block_state:{Name:"minecraft:gold_block"}}]}
execute if score @s uhcp_a_count matches 5..8 at @e[tag=UHCP_HarvesterTarget] anchored eyes run summon armor_stand ~ ~5 ~ {NoGravity:0b,Silent:1b,Small:1b,Invisible:1b,Tags:["UHCP_New","UHCP_GoldBlock","UHCP_Summon"],Passengers:[{id:"minecraft:block_display",NoGravity:0b,Tags:["UHCP_GBDisplay"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-1.5f,-1.5f,-1.5f],scale:[3f,3f,3f]},block_state:{Name:"minecraft:gold_block"}}]}
execute if score @s uhcp_a_count matches 9..12 at @e[tag=UHCP_HarvesterTarget] anchored eyes run summon armor_stand ~ ~5 ~ {NoGravity:0b,Silent:1b,Small:1b,Invisible:1b,Tags:["UHCP_New","UHCP_GoldBlock","UHCP_Summon"],Passengers:[{id:"minecraft:block_display",NoGravity:0b,Tags:["UHCP_GBDisplay"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-1.75f,-1.75f,-1.75f],scale:[3.5f,3.5f,3.5f]},block_state:{Name:"minecraft:gold_block"}}]}
execute if score @s uhcp_a_count matches 13..16 at @e[tag=UHCP_HarvesterTarget] anchored eyes run summon armor_stand ~ ~5 ~ {NoGravity:0b,Silent:1b,Small:1b,Invisible:1b,Tags:["UHCP_New","UHCP_GoldBlock","UHCP_Summon"],Passengers:[{id:"minecraft:block_display",NoGravity:0b,Tags:["UHCP_GBDisplay"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-2f,-2f,-2f],scale:[4f,4f,4f]},block_state:{Name:"minecraft:gold_block"}}]}
execute if score @s uhcp_a_count matches 17..19 at @e[tag=UHCP_HarvesterTarget] anchored eyes run summon armor_stand ~ ~5 ~ {NoGravity:0b,Silent:1b,Small:1b,Invisible:1b,Tags:["UHCP_New","UHCP_GoldBlock","UHCP_Summon"],Passengers:[{id:"minecraft:block_display",NoGravity:0b,Tags:["UHCP_GBDisplay"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-2.25f,-2.25f,-2.25f],scale:[4.5f,4.5f,4.5f]},block_state:{Name:"minecraft:gold_block"}}]}
execute if score @s uhcp_a_count matches 20.. at @e[tag=UHCP_HarvesterTarget] anchored eyes run summon armor_stand ~ ~5 ~ {NoGravity:0b,Silent:1b,Small:1b,Invisible:1b,Tags:["UHCP_New","UHCP_GoldBlock","UHCP_Summon"],Passengers:[{id:"minecraft:block_display",NoGravity:0b,Tags:["UHCP_GBDisplay"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-3f,-3f,-3f],scale:[6f,6f,6f]},block_state:{Name:"minecraft:gold_block"}}]}

execute store result score @e[tag=UHCP_New,sort=nearest,limit=1] uhcp_a_tier run scoreboard players get @s uhcp_a_count

execute at @e[tag=UHCP_HarvesterTarget] run playsound minecraft:block.anvil.place player @a[distance=..6] ~ ~ ~ 1.0 0.6 1.0

# Assign Team Scoreboards
execute if entity @a[predicate=uhcp:teams/solo] run function uhcp:teams/solo
execute if entity @a[predicate=uhcp:teams/team] run function uhcp:teams/team
scoreboard players set @a[predicate=uhcp:teams/neither] uhcp_team 0
scoreboard players set @a[gamemode=!survival] uhcp_team 0

# Gets team value
execute store result score @e[tag=UHCP_New,sort=nearest,limit=1] uhcp_team run scoreboard players get @s uhcp_team

tag @s remove UHCP_Owner
tag @e remove UHCP_HarvesterTarget
tag @e remove UHCP_New
scoreboard players reset @e[distance=..6] uhcp_a_count
scoreboard players reset @s uhcp_a_stack