execute unless score %game uhcp_initStatus matches 1 run return run function uhcp:relics/windfall/lobby
tag @s add UHCP_Owner

# Get number of player's golden apples
execute as @a[tag=!UHCP_Owner,team=!grace_period,distance=..9,gamemode=survival] unless score @s uhcp_team = @p[tag=UHCP_Owner] uhcp_team run tag @s add UHCP_HarvesterTarget
execute unless entity @e[tag=UHCP_HarvesterTarget] as @e[tag=!UHCP_Invulnerable,type=!#uhcp:inanimate_mobs,type=!minecraft:player,distance=..9] unless score @s uhcp_id = @p[tag=UHCP_Owner] uhcp_id unless score @s uhcp_team = @p[tag=UHCP_Owner] uhcp_team run tag @s add UHCP_HarvesterTarget

# Stop function if no targets are near
execute unless entity @e[tag=UHCP_HarvesterTarget] run return run tag @s remove UHCP_Owner

function uhcp:relics/durability/reset

execute store result score @s uhcp_aug_count run clear @s minecraft:golden_apple 0
execute store result score %e_gapple uhcp_aug_count run clear @s minecraft:enchanted_golden_apple 0

scoreboard players operation @s uhcp_aug_count += %e_gapple uhcp_aug_count 

# Scale size of block display with gapple amount
execute if score @s uhcp_aug_count matches 0 at @n[tag=UHCP_HarvesterTarget] anchored eyes run summon minecraft:armor_stand ~ ~5 ~ {NoGravity:0b,Silent:1b,Small:1b,Invisible:1b,Tags:["UHCP_New","UHCP_GoldBlock","UHCP_Summon"],Passengers:[{id:"minecraft:block_display",NoGravity:0b,Tags:["UHCP_GBDisplay"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-1f,-1f,-1f],scale:[2f,2f,2f]},block_state:{Name:"minecraft:gold_block"}}]}
execute if score @s uhcp_aug_count matches 1..4 at @n[tag=UHCP_HarvesterTarget] anchored eyes run summon minecraft:armor_stand ~ ~5 ~ {NoGravity:0b,Silent:1b,Small:1b,Invisible:1b,Tags:["UHCP_New","UHCP_GoldBlock","UHCP_Summon"],Passengers:[{id:"minecraft:block_display",NoGravity:0b,Tags:["UHCP_GBDisplay"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-1.25f,-1.25f,-1.25f],scale:[2.5f,2.5f,2.5f]},block_state:{Name:"minecraft:gold_block"}}]}
execute if score @s uhcp_aug_count matches 5..8 at @n[tag=UHCP_HarvesterTarget] anchored eyes run summon minecraft:armor_stand ~ ~5 ~ {NoGravity:0b,Silent:1b,Small:1b,Invisible:1b,Tags:["UHCP_New","UHCP_GoldBlock","UHCP_Summon"],Passengers:[{id:"minecraft:block_display",NoGravity:0b,Tags:["UHCP_GBDisplay"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-1.5f,-1.5f,-1.5f],scale:[3f,3f,3f]},block_state:{Name:"minecraft:gold_block"}}]}
execute if score @s uhcp_aug_count matches 9..12 at @n[tag=UHCP_HarvesterTarget] anchored eyes run summon minecraft:armor_stand ~ ~5 ~ {NoGravity:0b,Silent:1b,Small:1b,Invisible:1b,Tags:["UHCP_New","UHCP_GoldBlock","UHCP_Summon"],Passengers:[{id:"minecraft:block_display",NoGravity:0b,Tags:["UHCP_GBDisplay"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-1.75f,-1.75f,-1.75f],scale:[3.5f,3.5f,3.5f]},block_state:{Name:"minecraft:gold_block"}}]}
execute if score @s uhcp_aug_count matches 13..16 at @n[tag=UHCP_HarvesterTarget] anchored eyes run summon minecraft:armor_stand ~ ~5 ~ {NoGravity:0b,Silent:1b,Small:1b,Invisible:1b,Tags:["UHCP_New","UHCP_GoldBlock","UHCP_Summon"],Passengers:[{id:"minecraft:block_display",NoGravity:0b,Tags:["UHCP_GBDisplay"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-2f,-2f,-2f],scale:[4f,4f,4f]},block_state:{Name:"minecraft:gold_block"}}]}
execute if score @s uhcp_aug_count matches 17..19 at @n[tag=UHCP_HarvesterTarget] anchored eyes run summon minecraft:armor_stand ~ ~5 ~ {NoGravity:0b,Silent:1b,Small:1b,Invisible:1b,Tags:["UHCP_New","UHCP_GoldBlock","UHCP_Summon"],Passengers:[{id:"minecraft:block_display",NoGravity:0b,Tags:["UHCP_GBDisplay"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-2.25f,-2.25f,-2.25f],scale:[4.5f,4.5f,4.5f]},block_state:{Name:"minecraft:gold_block"}}]}
execute if score @s uhcp_aug_count matches 20.. at @n[tag=UHCP_HarvesterTarget] anchored eyes run summon minecraft:armor_stand ~ ~5 ~ {NoGravity:0b,Silent:1b,Small:1b,Invisible:1b,Tags:["UHCP_New","UHCP_GoldBlock","UHCP_Summon"],Passengers:[{id:"minecraft:block_display",NoGravity:0b,Tags:["UHCP_GBDisplay"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-3f,-3f,-3f],scale:[6f,6f,6f]},block_state:{Name:"minecraft:gold_block"}}]}

scoreboard players operation @n[tag=UHCP_New] uhcp_aug_tier = @s uhcp_aug_count
execute if items entity @s weapon.mainhand *[minecraft:custom_data~{uhcp_radiant:1b}] run tag @n[tag=UHCP_New] add UHCP_WindfallRadiant

execute at @n[tag=UHCP_HarvesterTarget] run playsound minecraft:block.anvil.place player @a[distance=..6] ~ ~ ~ 1.0 0.6 1.0

# Gets team value
scoreboard players operation @n[tag=UHCP_New] uhcp_team = @s uhcp_team

tag @s remove UHCP_Owner
tag @e remove UHCP_HarvesterTarget
tag @e remove UHCP_New
scoreboard players reset @s uhcp_aug_count
