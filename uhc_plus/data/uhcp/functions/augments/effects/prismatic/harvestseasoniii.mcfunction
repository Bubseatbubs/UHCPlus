execute store result score %random uhcp_aug_count run random value 0..9
execute if score %random uhcp_aug_count matches ..3 run give @s golden_apple
execute if score %random uhcp_aug_count matches ..3 run tellraw @s {"text":"You harvested a Golden Apple!","color":"red"}
