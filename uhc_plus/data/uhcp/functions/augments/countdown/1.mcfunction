# Runs when countdown is at 1
execute as @a[gamemode=adventure] unless score @s uhcp_augment = @s uhcp_augment at @s run function uhcp:augments/autoselect

# Used to run a function here