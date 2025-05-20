advancement revoke @s only uhcp:consumables/become_titan

# Overwrite other effects that may be occurring
execute as @s[tag=UHCP_IsPanda] run function uhcp:augments/effects/prismatic/kungfupanda/reset
execute as @s[tag=UHCP_IsRabbit] run function uhcp:consumables/magic_trick/reset
execute as @s[tag=UHCP_IsAttackTitan] run function uhcp:consumables/titan_spinal_fluid/reset

# Attributes
attribute @s minecraft:scale modifier add uhcp:titan_scale 6 add_value
attribute @s minecraft:entity_interaction_range modifier add uhcp:titan_entity_range -1 add_multiplied_total
attribute @s minecraft:knockback_resistance modifier add uhcp:titan_knockback_resistance -0.8 add_value
attribute @s minecraft:jump_strength modifier add uhcp:titan_jump_strength 0.75 add_value
attribute @s minecraft:step_height modifier add uhcp:titan_step_height 2 add_value
attribute @s minecraft:fall_damage_multiplier modifier add uhcp:titan_fall_damage_multiplier -1 add_value

playsound minecraft:entity.polar_bear.warning master @a[distance=..32] ~ ~ ~ 1000 0.5 1
playsound minecraft:entity.polar_bear.warning master @a[distance=..32] ~ ~ ~ 1000 0.5 1
playsound minecraft:entity.lightning_bolt.thunder master @a[distance=..32] ~ ~ ~ 1000 0.5 1
particle minecraft:flash ~ ~ ~ 5 5 5 0.1 300 normal

effect give @s minecraft:resistance 30 1 false
effect clear @s minecraft:invisibility
tag @s add UHCP_Titan
tag @s add UHCP_IsAttackTitan
