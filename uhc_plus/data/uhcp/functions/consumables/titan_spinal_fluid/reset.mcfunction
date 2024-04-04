attribute @s minecraft:generic.scale modifier remove 41072b91-1c8b-485e-be92-53b6eeb9660b
attribute @s minecraft:player.entity_interaction_range modifier remove 606e0f11-7483-4e73-828c-b588dd46f162
attribute @s minecraft:generic.knockback_resistance modifier remove fae44ddd-2a29-4fc3-aabe-4b5e288a84b4
attribute @s minecraft:generic.jump_strength modifier remove 049fc60a-5ef5-470e-a8de-24da2f319d48
attribute @s minecraft:generic.step_height modifier remove 1023977d-6dca-477b-a803-4ff0adcb32b1
attribute @s minecraft:generic.fall_damage_multiplier modifier remove e86e3562-bef5-4501-8c52-69a36641913f

effect give @s resistance 2 5 true
playsound entity.breeze.jump master @a[distance=..16] ~ ~ ~ 1 1 1

tag @s remove UHCP_Titan
tag @s remove UHCP_IsAttackTitan
scoreboard players reset @s uhcp_transformDuration
