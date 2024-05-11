advancement revoke @s only uhcp:consumables/become_titan

# Overwrite other effects that may be occurring
execute if entity @s[tag=UHCP_IsPanda] run function uhcp:augments/effects/prismatic/kungfupanda/reset
execute if entity @s[tag=UHCP_IsRabbit] run function uhcp:consumables/magic_trick/reset
execute if entity @s[tag=UHCP_IsAttackTitan] run function uhcp:consumables/titan_spinal_fluid/reset

# Attributes
attribute @s minecraft:generic.scale modifier add 41072b91-1c8b-485e-be92-53b6eeb9660b "" 6 add_value
attribute @s minecraft:player.entity_interaction_range modifier add 606e0f11-7483-4e73-828c-b588dd46f162 "" -3 add_value
attribute @s minecraft:generic.knockback_resistance modifier add fae44ddd-2a29-4fc3-aabe-4b5e288a84b4 "" -0.8 add_value
attribute @s minecraft:generic.jump_strength modifier add 049fc60a-5ef5-470e-a8de-24da2f319d48 "" 0.75 add_value
attribute @s minecraft:generic.step_height modifier add 1023977d-6dca-477b-a803-4ff0adcb32b1 "" 2 add_value
attribute @s minecraft:generic.fall_damage_multiplier modifier add e86e3562-bef5-4501-8c52-69a36641913f "" -1 add_value

playsound minecraft:entity.polar_bear.warning master @a[distance=..32] ~ ~ ~ 1000 0.5 1
playsound minecraft:entity.polar_bear.warning master @a[distance=..32] ~ ~ ~ 1000 0.5 1
playsound minecraft:entity.lightning_bolt.thunder master @a[distance=..32] ~ ~ ~ 1000 0.5 1
particle minecraft:flash ~ ~ ~ 5 5 5 0.1 300 normal

effect give @s minecraft:resistance 30 1 false
effect clear @s minecraft:invisibility
tag @s add UHCP_Titan
tag @s add UHCP_IsAttackTitan
