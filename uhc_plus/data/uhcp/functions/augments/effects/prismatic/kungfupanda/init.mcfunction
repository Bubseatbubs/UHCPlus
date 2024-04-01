advancement revoke @s only uhcp:augments/become_panda
function uhcp:augments/effects/prismatic/kungfupanda/store_armor
tag @s add UHCP_IsPanda
execute if score @s uhcp_team matches 15.. run team join no_collision @s
playsound block.brewing_stand.brew master @a[distance=..4] ~ ~ ~ 1 1 0.75
particle effect ~ ~ ~ 0.1 0.1 0.1 0.1 15 normal
effect clear @s bad_omen

attribute @s minecraft:player.entity_interaction_range modifier add 606e0f11-7483-4e73-828c-b588dd46f162 "" -3 add_value
attribute @s minecraft:generic.armor modifier add aca4cdb1-6fb8-494f-8700-5dcac4742191 "" 30 add_value
attribute @s minecraft:generic.scale modifier add 46eca67f-7103-4d35-a3b7-1576bf42ca48 "" 0.15 add_value
summon panda ~ ~ ~ {Silent:1b,NoAI:1b,Health:1000f,MainGene:"normal",HiddenGene:"normal",Tags:["UHCP_New","UHCP_Summon","UHCP_KungfuPanda"],Attributes:[{Name:"generic.scale",Base:1.2},{Name:"generic.armor",Base:25},{Name:"generic.max_health",Base:1000}]}
execute as @e[tag=UHCP_New,sort=nearest,limit=1] store result score @s uhcp_aug_tier run data get entity @s Health
effect give @s invisibility infinite 0 true
effect give @s absorption infinite 4 true

# Assign ID if player doesn't have one already
execute unless score @s uhcp_id = @s uhcp_id run function uhcp:start/id/assign

# Owner set to player
scoreboard players operation @e[tag=UHCP_New,sort=nearest,limit=1] uhcp_id = @s uhcp_id
scoreboard players operation @e[tag=UHCP_New,sort=nearest,limit=1] uhcp_team = @s uhcp_team
execute as @e[tag=UHCP_New,sort=nearest,limit=1] run function uhcp:teams/join
execute as @e[tag=UHCP_New,sort=nearest,limit=1] if score @s uhcp_team matches 15.. run team join no_collision @s
tag @e remove UHCP_New