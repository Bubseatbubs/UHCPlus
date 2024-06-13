execute store result score %random uhcp_aug_count run random value 0..19
execute if score %random uhcp_aug_count matches 0 on attacker at @s run function uhcp:armaments/kalyxs_thorns/formation/1
execute if score %random uhcp_aug_count matches 1 on attacker at @s run function uhcp:armaments/kalyxs_thorns/formation/2
execute if score %random uhcp_aug_count matches 2 on attacker at @s run function uhcp:armaments/kalyxs_thorns/formation/3
execute if score %random uhcp_aug_count matches 3 on attacker at @s run function uhcp:armaments/kalyxs_thorns/formation/4
execute if score %random uhcp_aug_count matches 4 on attacker at @s run function uhcp:armaments/kalyxs_thorns/formation/5