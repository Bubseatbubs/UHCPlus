execute unless entity @s[tag=!UHCP_IsAttackTitan,tag=!UHCP_IsPanda,tag=!UHCP_IsRabbit] run return 0

function uhcp:entity/armor/store_armor
tag @s add UHCP_IsRabbit
execute if score @s uhcp_team matches 15.. if score %pvp uhcp_settings matches ..0 run team join no_collision @s
playsound block.brewing_stand.brew master @a[distance=..4] ~ ~ ~ 1 1 0.75
playsound entity.rabbit.hurt master @a[distance=..4] ~ ~ ~ 1 1 0.75
particle effect ~ ~ ~ 0.1 0.1 0.1 0.1 15 normal

tellraw @s {"text":"You've been transformed into a harmless Rabbit!","color":"dark_red"}
attribute @s minecraft:player.entity_interaction_range modifier add 606e0f11-7483-4e73-828c-b588dd46f162 "" -3 add_value
attribute @s minecraft:player.block_interaction_range modifier add f27d9082-575a-4cec-80ab-1baa22414ade "" -4.5 add_value
attribute @s minecraft:generic.scale modifier add 46eca67f-7103-4d35-a3b7-1576bf42ca48 "" -0.5 add_value
summon rabbit ~ ~ ~ {Invulnerable:1b,Tags:["UHCP_New","UHCP_Summon","UHCP_MagicRabbit","UHCP_Invulnerable"],Attributes:[{Name:"generic.scale",Base:1.25}]}
effect give @s invisibility 10 0 true
effect give @s jump_boost 10 2 true
effect give @s resistance 10 4 true

# Assign ID if player doesn't have one already
execute unless score @s uhcp_id = @s uhcp_id run function uhcp:start/id/assign

# Owner set to player
scoreboard players operation @e[tag=UHCP_New,sort=nearest,limit=1] uhcp_id = @s uhcp_id
scoreboard players operation @e[tag=UHCP_New,sort=nearest,limit=1] uhcp_team = @s uhcp_team
execute as @e[tag=UHCP_New,sort=nearest,limit=1] run function uhcp:teams/join
execute if score %pvp uhcp_settings matches ..0 run team join no_collision @e[tag=UHCP_New,sort=nearest,scores={uhcp_team=15..},limit=1]
tag @e remove UHCP_New
