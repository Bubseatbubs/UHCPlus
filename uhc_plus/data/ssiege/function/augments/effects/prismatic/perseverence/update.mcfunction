scoreboard players add @s uhcp_game_time 40
execute if score @s uhcp_initStatus matches ..0 run return run effect give @s regeneration 2 0 false
scoreboard players remove @s uhcp_initStatus 40