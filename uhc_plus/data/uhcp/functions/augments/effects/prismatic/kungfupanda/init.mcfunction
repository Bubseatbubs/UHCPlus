advancement revoke @s only uhcp:augments/become_panda
execute if entity @s[tag=UHCP_IsPanda] run function uhcp:augments/effects/prismatic/kungfupanda/reset
function uhcp:entity/armor/store_armor
tag @s add UHCP_IsPanda
execute if score @s uhcp_team matches 15.. if score %pvp uhcp_settings matches ..0 run team join no_collision @s
playsound block.brewing_stand.brew master @a[distance=..4] ~ ~ ~ 1 1 0.75
particle effect ~ ~ ~ 0.1 0.1 0.1 0.1 15 normal
effect clear @s bad_omen

attribute @s minecraft:player.entity_interaction_range modifier add 606e0f11-7483-4e73-828c-b588dd46f162 "" -3 add_value
attribute @s minecraft:generic.armor modifier add aca4cdb1-6fb8-494f-8700-5dcac4742191 "" 30 add_value
attribute @s minecraft:generic.scale modifier add 20f5990b-6593-47ed-a6e5-a88f081766d5 "" 0.65 add_value
summon panda ~ ~ ~ {Silent:1b,NoAI:1b,Health:1000f,MainGene:"normal",HiddenGene:"normal",Tags:["UHCP_New","UHCP_Summon","UHCP_KungfuPanda"],Attributes:[{Name:"generic.scale",Base:1.2},{Name:"generic.armor",Base:25},{Name:"generic.max_health",Base:1000}]}
execute as @e[tag=UHCP_New,sort=nearest,limit=1] store result score @s uhcp_aug_tier run data get entity @s Health
execute if score @s uhcp_augment matches 23 as @e[tag=UHCP_New,sort=nearest,limit=1] run attribute @s minecraft:generic.scale modifier add 20f5990b-6593-47ed-a6e5-a88f081766d5 "" -0.3 add_value
execute if score @s uhcp_augment matches 219 as @e[tag=UHCP_New,sort=nearest,limit=1] run attribute @s minecraft:generic.scale modifier add 20f5990b-6593-47ed-a6e5-a88f081766d5 "" -0.4 add_value
execute if score @s uhcp_augment matches 14 as @e[tag=UHCP_New,sort=nearest,limit=1] run attribute @s minecraft:generic.scale modifier add 20f5990b-6593-47ed-a6e5-a88f081766d5 "" 0.25 add_value
effect give @s invisibility infinite 0 true
effect give @s absorption infinite 4 true

# Assign ID if player doesn't have one already
execute unless score @s uhcp_id = @s uhcp_id run function uhcp:start/id/assign

# Owner set to player
scoreboard players operation @e[tag=UHCP_New,sort=nearest,limit=1] uhcp_id = @s uhcp_id
scoreboard players operation @e[tag=UHCP_New,sort=nearest,limit=1] uhcp_team = @s uhcp_team
execute as @e[tag=UHCP_New,sort=nearest,limit=1] run function uhcp:teams/join
execute if score %pvp uhcp_settings matches ..0 run team join no_collision @e[tag=UHCP_New,sort=nearest,scores={uhcp_team=15..},limit=1]
tag @e remove UHCP_New

# If player has Kung-Fu Panda, regenerate Bamboo
execute if score @s uhcp_augment matches 147 run scoreboard players operation @s uhcp_aug_regenItem = %time uhcp_game_time
execute if score @s uhcp_augment matches 147 run scoreboard players add @s uhcp_aug_regenItem 6000