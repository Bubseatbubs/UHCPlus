# Kill block display
tag @s add UHCP_Owner
function uhcp:augments/effects/silver/prophunt/kill
tag @s remove UHCP_Owner

# Effects
attribute @s minecraft:scale modifier remove uhcp:scale
attribute @s minecraft:block_interaction_range modifier remove uhcp:block_range
attribute @s minecraft:entity_interaction_range modifier remove uhcp:entity_range
effect clear @s minecraft:invisibility
particle minecraft:cloud ~ ~ ~ 0.5 0.5 0.5 0.1 10 normal
playsound minecraft:entity.breeze.jump master @s ~ ~ ~ 1 1 1
execute if score @s uhcp_aug_count matches 60.. run playsound minecraft:block.note_block.pling master @s ~ ~ ~ 1 2 1

# Reset status
advancement revoke @s only uhcp:augments/prop_hunt
scoreboard players set @s uhcp_aug_tier 0
scoreboard players set @s uhcp_aug_count 0

# Resistance
execute if score %mode uhcp_settings matches 0 run return run effect give @s minecraft:resistance 1 5
effect give @s minecraft:resistance 3 0
