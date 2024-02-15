##
# Generate augment choices
##

tag @s remove Aug_Reroll

scoreboard players set @s uhcp_a_choosingAugment 1
execute if score %tier uhcp_a_tier matches 0 run function uhcp:augments/silver
execute if score %tier uhcp_a_tier matches 1 run function uhcp:augments/gold
execute if score %tier uhcp_a_tier matches 2 run function uhcp:augments/prismatic
scoreboard players set @s uhcp_a_choosingAugment 0

# Check for duplicates. If there are duplicates, reroll options.
data remove storage uhcp:augments Roll
execute unless score @s uhcp_a_patron matches 8 run function uhcp:augments/generatechoices/3
execute if score @s uhcp_a_patron matches 8 run function uhcp:augments/generatechoices/4

execute as @s[tag=Aug_Reroll] run function uhcp:augments/generatechoices
