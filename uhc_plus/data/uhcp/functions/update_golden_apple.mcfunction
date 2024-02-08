scoreboard players add @s uhcp_a_timer 1

execute if score @s uhcp_a_timer matches 5..
execute if score @s uhcp_a_selectedAugment matches 209 run function uhcp:augments/effects/prismatic/goldenerapples/effect
execute if score @s uhcp_a_selectedAugment matches 223 run function uhcp:augments/effects/prismatic/soulsiphoner/harm
tag @s remove UHCP_AteApple