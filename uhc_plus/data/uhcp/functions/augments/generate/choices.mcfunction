##
# Generate augment choices
##

tag @s remove Aug_Reroll

scoreboard players set @s uhcp_a_choosingAugment 1
execute if score %tier uhcp_a_tier matches 0 run function uhcp:augments/roll/silver
execute if score %tier uhcp_a_tier matches 1 run function uhcp:augments/roll/gold
execute if score %tier uhcp_a_tier matches 2 run function uhcp:augments/roll/prismatic
scoreboard players set @s uhcp_a_choosingAugment 0

# Check for duplicates. If there are duplicates, reroll options.
scoreboard players set %uhcp_reroll uhcp_itemInv 0
data remove storage uhcp:augments Roll
execute unless score @s uhcp_a_patron matches 8 store result score %uhcp_reroll uhcp_itemInv run function uhcp:augments/roll/3
execute if score @s uhcp_a_patron matches 8 store result score %uhcp_reroll uhcp_itemInv run function uhcp:augments/roll/4

execute if score %uhcp_reroll uhcp_itemInv matches 1 run function uhcp:augments/generate/choices
