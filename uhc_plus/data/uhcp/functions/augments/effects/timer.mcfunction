scoreboard players add @s uhcp_a_timer 1
execute store success score %reset uhcp_a_timer if score @s uhcp_a_selectedAugment matches 5 if score @s uhcp_a_timer matches 60000 run function uhcp:augments/effects/gold/delayedprotection
execute store success score %reset uhcp_a_timer if score @s uhcp_a_selectedAugment matches 15 if score @s uhcp_a_timer matches 2400 run give @s apple
execute store success score %reset uhcp_a_timer if score @s uhcp_a_selectedAugment matches 25 if score @s uhcp_a_timer matches 48000 run function uhcp:augments/effects/gold/secondwind
execute store success score %reset uhcp_a_timer if score @s uhcp_a_selectedAugment matches 27 if score @s uhcp_a_timer matches 2400 run give @s potion{Enchantments:[{}],Potion:"minecraft:invisibility"} 1
execute if score %reset uhcp_a_timer matches 1.. run scoreboard players reset @s uhcp_a_timer