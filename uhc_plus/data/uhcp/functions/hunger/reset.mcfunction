execute if score @s uhcp_hungerTimer >= %uhcp_max uhcp_hungerTimer run effect clear @s hunger
scoreboard players reset @s uhcp_hungerTimer
advancement revoke @s only uhcp:hurt_player
