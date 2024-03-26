scoreboard players add @s uhcp_timer 1

execute if score @s uhcp_timer matches 5..
execute if score @s uhcp_augment matches 209 run function uhcp:augments/effects/prismatic/goldenerapples/effect
execute if score @s uhcp_augment matches 223 run function uhcp:augments/effects/prismatic/goldenlessapples/effect
tag @s remove UHCP_AteApple