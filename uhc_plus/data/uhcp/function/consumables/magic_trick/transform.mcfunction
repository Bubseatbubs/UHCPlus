execute unless entity @s[tag=!UHCP_IsAttackTitan,tag=!UHCP_IsPanda,tag=!UHCP_IsRabbit] run return 0

function uhcp:entity/armor/store_armor
tag @s add UHCP_IsRabbit
execute if score %pvp uhcp_settings matches ..0 run team join no_collision @s[scores={uhcp_team=15..}]
playsound minecraft:block.brewing_stand.brew master @a[distance=..4] ~ ~ ~ 1 1 0.75
playsound minecraft:entity.rabbit.hurt master @a[distance=..4] ~ ~ ~ 1 1 0.75
particle minecraft:effect ~ ~ ~ 0.1 0.1 0.1 0.1 15 normal

tellraw @s {"text":"You've been transformed into a harmless Rabbit!","color":"dark_red"}
attribute @s minecraft:entity_interaction_range modifier add uhcp:titan_entity_range -1 add_multiplied_total
attribute @s minecraft:block_interaction_range modifier add uhcp:rabbit_block_range -1 add_multiplied_total
attribute @s minecraft:scale modifier add uhcp:scale -0.5 add_value
summon minecraft:rabbit ~ ~ ~ {Invulnerable:1b,Tags:["UHCP_New","UHCP_Summon","UHCP_MagicRabbit","UHCP_Invulnerable"],attributes:[{id:"minecraft:scale",base:1.25d}]}
effect give @s minecraft:invisibility 10 0 true
effect give @s minecraft:jump_boost 10 2 true
effect give @s minecraft:resistance 10 4 true

# Assign ID if player doesn't have one already
execute unless score @s uhcp_id = @s uhcp_id run function uhcp:start/id/assign

# Owner set to player
scoreboard players operation @n[tag=UHCP_New] uhcp_id = @s uhcp_id
scoreboard players operation @n[tag=UHCP_New] uhcp_team = @s uhcp_team
execute as @n[tag=UHCP_New] run function uhcp:teams/join
execute if score %pvp uhcp_settings matches ..0 run team join no_collision @n[tag=UHCP_New,scores={uhcp_team=15..}]
tag @e remove UHCP_New
