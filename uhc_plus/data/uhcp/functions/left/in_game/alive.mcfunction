# Live players
execute unless score %augment_countdown uhcp_game_time matches 1.. if entity @s[tag=UHCP_ChoosingItem] run function uhcp:left/in_game/augments/select

# Augments potentially affected by leaving
# Gas Gas Gas
execute if score @s uhcp_augment matches 207 run function uhcp:left/in_game/augments/effects/gasgasgas

# Late Looter
execute if score @s uhcp_augment matches 18 run function uhcp:left/in_game/augments/effects/latelooter
