tag @s add UHCP_Owner
execute as @e[tag=UHCP_StoredArmor] if score @s uhcp_id = @p[tag=UHCP_Owner] uhcp_id run tag @s add UHCP_CurrentCDArmor

execute store result score %cd_max_health uhcp_aug_count run data get entity @e[tag=UHCP_CurrentCDArmor,limit=1] ArmorItems[2].components."minecraft:attribute_modifiers".modifiers[{type:"minecraft:max_health"}].amount
execute store result score %cd_attack_damage uhcp_aug_count run data get entity @e[tag=UHCP_CurrentCDArmor,limit=1] ArmorItems[2].components."minecraft:attribute_modifiers".modifiers[{type:"minecraft:attack_damage"}].amount 10
execute store result score %cd_attack_speed uhcp_aug_count run data get entity @e[tag=UHCP_CurrentCDArmor,limit=1] ArmorItems[2].components."minecraft:attribute_modifiers".modifiers[{type:"minecraft:attack_speed"}].amount 1000
execute store result score %cd_movement_speed uhcp_aug_count run data get entity @e[tag=UHCP_CurrentCDArmor,limit=1] ArmorItems[2].components."minecraft:attribute_modifiers".modifiers[{type:"minecraft:movement_speed"}].amount 1000
execute store result score %cd_entity_interaction_range uhcp_aug_count run data get entity @e[tag=UHCP_CurrentCDArmor,limit=1] ArmorItems[2].components."minecraft:attribute_modifiers".modifiers[{type:"minecraft:entity_interaction_range"}].amount 10
execute store result score %cd_armor_toughness uhcp_aug_count run data get entity @e[tag=UHCP_CurrentCDArmor,limit=1] ArmorItems[2].components."minecraft:attribute_modifiers".modifiers[{type:"minecraft:armor_toughness"}].amount
execute store result score %cd_armor uhcp_aug_count run data get entity @e[tag=UHCP_CurrentCDArmor,limit=1] ArmorItems[2].components."minecraft:attribute_modifiers".modifiers[{type:"minecraft:armor"}].amount

tag @e remove UHCP_CurrentCDArmor
tag @s remove UHCP_Owner