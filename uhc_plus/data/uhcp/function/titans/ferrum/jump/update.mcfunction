scoreboard players add @s uhcp_timer 1
fill ~-8 ~ ~-8 ~8 ~18 ~8 minecraft:air replace #uhcp:titan_can_break
execute at @s if score @s uhcp_timer matches 25.. unless entity @e[tag=UHCP_FerrumLanding,distance=..2] run fill ~-8 ~-4 ~-8 ~8 ~ ~8 minecraft:air replace #uhcp:titan_can_break

execute unless score @s uhcp_timer matches 25.. run return 0
execute if score @s uhcp_timer matches 25 run return run function uhcp:titans/ferrum/jump/prepare_land

execute if score @s uhcp_timer matches 90.. run function uhcp:titans/ferrum/jump/land