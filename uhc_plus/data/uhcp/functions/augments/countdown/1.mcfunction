# Runs when countdown is at 1
execute as @a[gamemode=adventure] unless score @s uhcp_a_selectedAugment = @s uhcp_a_selectedAugment at @s run function uhcp:augments/autoselect

# Prepare for solo leveling
execute if entity @a[gamemode=adventure,scores={uhcp_a_selectedAugment=222}] run function uhcp:augments/effects/prismatic/sololeveling/prepare
