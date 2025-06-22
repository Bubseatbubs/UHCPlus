scoreboard players set %nearby_enemies uhcp_initStatus 0
execute as @a[distance=..25] unless score @s uhcp_team = %team uhcp_initStatus run scoreboard players add %nearby_enemies uhcp_initStatus 1
execute if score %nearby_enemies uhcp_initStatus matches 1.. run return fail

particle composter ^ ^2 ^ 8 2 8 0.5 10 normal
scoreboard players operation %temp uhcp_initStatus = %time uhcp_game_time
scoreboard players operation %temp uhcp_initStatus %= #40 uhcp_const

execute unless score %temp uhcp_initStatus matches 0 run return fail
effect give @s regeneration 2 2 true