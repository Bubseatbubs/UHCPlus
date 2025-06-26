# Upon disguised player rejoining game
attribute @s minecraft:scale modifier remove uhcp:scale
attribute @s minecraft:block_interaction_range modifier remove uhcp:block_range
attribute @s minecraft:entity_interaction_range modifier remove uhcp:entity_range
effect clear @s minecraft:invisibility

tag @s add UHCP_Owner
function uhcp:augments/effects/silver/prophunt/kill
tag @s remove UHCP_Owner

scoreboard players set @s uhcp_aug_tier 0
scoreboard players set @s uhcp_aug_count 0
