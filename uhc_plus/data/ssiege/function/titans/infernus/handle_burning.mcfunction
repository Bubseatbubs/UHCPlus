# Apply extra damage to tagged entities that are on fire
execute as @e[tag=SSIEGE_hit_by_Infernus_Blessing,nbt=!{Fire:0s}] run damage @s 2 minecraft:on_fire

# Remove tag when fire expires or entity dies
execute as @e[tag=SSIEGE_hit_by_Infernus_Blessing] if data entity @s {Fire:0s} run tag @s remove SSIEGE_hit_by_Infernus_Blessing