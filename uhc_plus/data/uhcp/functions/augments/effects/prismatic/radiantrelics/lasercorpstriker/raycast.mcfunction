particle glow_squid_ink ~ ~ ~ 0.01 0.01 0.01 0 1
execute positioned ^ ^ ^0.5 unless block ~ ~ ~ #uhcp:non_solid_blocks run kill @s
tp @s ^ ^ ^0.5
execute at @s as @e[distance=..5] run function uhcp:augments/effects/prismatic/radiantrelics/lasercorpstriker/hitmob
scoreboard players add @s uhcp_a_timer 1
execute if score @s uhcp_a_timer matches 20.. run kill @s