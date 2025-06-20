##
# Gives player the augment they selected
# When the ID returns 0, that means the augment does nothing at the start of the game
##

# Augment tiers
execute if score @s uhcp_augment matches 0..99 run return run function uhcp:augments/effects/init/gold
execute if score @s uhcp_augment matches 100..199 run return run function uhcp:augments/effects/init/silver
execute if score @s uhcp_augment matches 200..299 run function uhcp:augments/effects/init/prismatic
