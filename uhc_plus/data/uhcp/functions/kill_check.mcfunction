# Gives the player a golden apple after dying

execute if score %apples uhcp_settings matches 1 run give @s golden_apple 1
execute if score %apples uhcp_settings matches 2 run give @s golden_apple 2
execute if score %apples uhcp_settings matches 3 run give @s golden_apple 3
execute if score %apples uhcp_settings matches 4 run give @s golden_apple 4
execute if score %apples uhcp_settings matches 5 run give @s golden_apple 5

# Give levels
xp add @s 8 levels

# Augments Check
function uhcp:augments/effects/killed_player

advancement revoke @s only uhcp:killed_player