attribute @s minecraft:scale modifier remove uhcp:titan_scale
attribute @s minecraft:entity_interaction_range modifier remove uhcp:titan_entity_range
attribute @s minecraft:knockback_resistance modifier remove uhcp:titan_knockback_resistance
attribute @s minecraft:jump_strength modifier remove uhcp:titan_jump_strength
attribute @s minecraft:step_height modifier remove uhcp:titan_step_height
attribute @s minecraft:fall_damage_multiplier modifier remove uhcp:titan_fall_damage_multiplier

effect give @s minecraft:resistance 2 5 true
playsound minecraft:entity.breeze.jump master @a[distance=..16] ~ ~ ~ 1 1 1

tag @s remove UHCP_Titan
tag @s remove UHCP_IsAttackTitan
scoreboard players reset @s uhcp_transformDuration
