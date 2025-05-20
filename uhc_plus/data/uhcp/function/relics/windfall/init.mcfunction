# Get number of player's golden apples
execute store result score @s uhcp_aug_count run clear @s minecraft:golden_apple 0
execute store result score %e_gapple uhcp_aug_count run clear @s minecraft:enchanted_golden_apple 0
scoreboard players operation @s uhcp_aug_count += %e_gapple uhcp_aug_count 

# Scale size of block display with gapple amount
execute at @n[tag=UHCP_HarvesterTarget] anchored eyes run function uhcp:relics/windfall/target
scoreboard players operation @n[tag=UHCP_New] uhcp_aug_tier = @s uhcp_aug_count

# Gets team value
scoreboard players operation @n[tag=UHCP_New] uhcp_team = @s uhcp_team

tag @s remove UHCP_Owner
tag @e remove UHCP_HarvesterTarget
tag @e remove UHCP_New
scoreboard players reset @s uhcp_aug_count
