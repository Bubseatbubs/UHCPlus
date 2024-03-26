# Run for players whom are part of game
# Yes, the augment countdown score check should be for 1, not 0.
execute unless score %augment_countdown uhcp_game_time matches 1.. if entity @s[tag=UHCP_ChoosingItem] run function uhcp:left/augments/select

# Augments potentially affected by leaving
# Gas Gas Gas
execute if score @s uhcp_augment matches 207 run function uhcp:left/augments/effects/gasgasgas

# Late Looter
execute if score @s uhcp_augment matches 18 run function uhcp:left/augments/effects/latelooter

# Reset Titan Healthbars -- they should re-apply if the Titans are still alive
function uhcp:titans/reset_bossbar