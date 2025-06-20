# Absorption hearts
effect give @s minecraft:absorption infinite 255 true
effect clear @s minecraft:absorption
scoreboard players reset @s uhcp_leave

# Effects
playsound minecraft:block.enchantment_table.use master @s ~ ~ ~ 1 1 1
particle minecraft:composter ~ ~ ~ 0.5 1 0.5 0.01 50 normal
particle minecraft:effect ~ ~ ~ 0.5 1 0.5 0.01 50 normal
