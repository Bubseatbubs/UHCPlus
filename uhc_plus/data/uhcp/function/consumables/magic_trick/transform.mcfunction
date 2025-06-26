execute unless entity @s[tag=!UHCP_IsAttackTitan,tag=!UHCP_IsPanda,tag=!UHCP_SmoothGetaway] run return fail
execute as @s[tag=UHCP_IsRabbit] run return run function uhcp:consumables/magic_trick/refresh
execute as @s[predicate=uhcp:augments/prop_hunt/player,scores={uhcp_aug_tier=1}] run function uhcp:augments/effects/silver/prophunt/rejoin

function uhcp:entity/armor/store_armor
tag @s add UHCP_IsRabbit
execute if score %pvp uhcp_settings matches ..0 run team join no_collision @s[scores={uhcp_team=15..}]
playsound minecraft:block.brewing_stand.brew master @a[distance=..4] ~ ~ ~ 1 1 0.75
playsound minecraft:entity.rabbit.hurt master @a[distance=..4] ~ ~ ~ 1 1 0.75
particle minecraft:effect ~ ~ ~ 0.1 0.1 0.1 0.1 15 normal

tellraw @s {"text":"You've been transformed into a harmless rabbit!","color":"dark_red"}
effect give @s minecraft:invisibility 10 0 true
effect give @s minecraft:jump_boost 10 2 true
effect give @s minecraft:resistance 10 4 true
attribute @s minecraft:entity_interaction_range modifier add uhcp:titan_entity_range -1 add_multiplied_total
attribute @s minecraft:block_interaction_range modifier add uhcp:rabbit_block_range -1 add_multiplied_total
attribute @s minecraft:scale modifier add uhcp:scale -0.5 add_value
summon minecraft:rabbit ~ ~ ~ {Invulnerable:true,CanPickUpLoot:false,Tags:["UHCP_New","UHCP_Summon","UHCP_MagicRabbit","UHCP_Invulnerable"],attributes:[{id:"minecraft:scale",base:1.25d}]}

# Owner set to player
scoreboard players operation @n[tag=UHCP_New] uhcp_id = @s uhcp_id
scoreboard players operation @n[tag=UHCP_New] uhcp_team = @s uhcp_team
execute as @n[tag=UHCP_New] run function uhcp:teams/join
execute if score %pvp uhcp_settings matches ..0 if score @s uhcp_team matches 15.. run function uhcp:consumables/magic_trick/no_collision
tag @e remove UHCP_New
