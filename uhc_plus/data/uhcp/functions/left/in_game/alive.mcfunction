# Augment selection
execute unless score %augment_countdown uhcp_game_time matches 1.. if entity @s[tag=UHCP_ChoosingItem] run function uhcp:left/in_game/augments/select

# Augments potentially affected by leaving
execute if score @s uhcp_augment matches 0..99 run return run function uhcp:left/in_game/augments/apply/gold
execute if score @s uhcp_augment matches 100..199 run return run function uhcp:left/in_game/augments/apply/silver
execute if score @s uhcp_augment matches 200..299 run function uhcp:left/in_game/augments/apply/prismatic
