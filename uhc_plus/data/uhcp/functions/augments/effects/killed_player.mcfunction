
advancement revoke @s only uhcp:augments/killed_player
execute if score @s uhcp_a_selectedAugment matches 30 at @s run function uhcp:augments/effects/gold/bloodthirsty
execute if score @s[scores={uhcp_a_gloryOfRa=0..}] uhcp_a_selectedAugment matches 237 at @s run scoreboard players add @s uhcp_a_gloryOfRa 2
execute if score @s[scores={uhcp_a_gloryOfRa=0..}] uhcp_a_selectedAugment matches 237 at @s run loot give @s loot uhcp:augments/sundisk
execute if score @s[scores={uhcp_a_gloryOfRa=0..}] uhcp_a_selectedAugment matches 237 at @s run loot give @s loot uhcp:augments/sundisk