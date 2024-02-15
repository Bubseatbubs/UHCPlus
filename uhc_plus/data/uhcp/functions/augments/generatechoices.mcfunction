##
# Generate augment choices
##

tag @s remove Aug_Reroll

execute if score %tier uhcp_a_tier matches 0 run function uhcp:augments/silver
execute if score %tier uhcp_a_tier matches 1 run function uhcp:augments/gold
execute if score %tier uhcp_a_tier matches 2 run function uhcp:augments/prismatic

# Check for duplicates. If there are duplicates, reroll options.
data remove storage uhcp:augments Roll
execute if score @s uhcp_a_patron matches 8 run function uhcp:augments/generatechoices/3
execute unless score @s uhcp_a_patron matches 8 run function uhcp:augments/generatechoices/3

execute as @s[tag=Aug_Reroll] run function uhcp:augments/generatechoices
