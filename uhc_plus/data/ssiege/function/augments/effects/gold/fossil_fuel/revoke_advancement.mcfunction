scoreboard players set @s uhcp_game_time -1

# Count total bones (both types)
execute store result score @s uhcp_initStatus run clear @s minecraft:bone 0

# Only proceed if we have bones

execute if score @s uhcp_initStatus matches 0 run advancement revoke @s only ssiege:augments/fossil_fuel/inventory_changed
execute if score @s uhcp_initStatus matches 0 run return fail

# Remove ALL bones from inventory
clear @s minecraft:bone

loot give @s loot ssiege:augments/fossil_fuel

advancement revoke @s only ssiege:augments/fossil_fuel/inventory_changed

# Reset the advancement so it can trigger again - needs to be scheduled for whatever reason
#schedule function ssiege:augments/effects/gold/fossil_fuel/revoke_advancement 2

#execute as @a[scores={uhcp_augment=319}] run advancement revoke @s only ssiege:augments/fossil_fuel/inventory_changed