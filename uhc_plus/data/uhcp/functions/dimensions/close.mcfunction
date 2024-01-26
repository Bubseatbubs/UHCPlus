# Kick players out of End and Nether
execute if entity @a[predicate=!uhcp:dimensions/minecraft/overworld,gamemode=survival] run function uhcp:dimensions/close/dimension

# Replace portal blocks
execute as @a[gamemode=survival] at @s run function uhcp:dimensions/close/replace
execute as @e[type=minecraft:ender_pearl] at @s run fill ~-4 ~-4 ~-4 ~4 ~4 ~4 minecraft:air replace minecraft:end_portal
