execute store result score %random uhcp_aug_count run random value 0..19
execute if score %random uhcp_aug_count matches 0 run give @s golden_apple
execute if score %random uhcp_aug_count matches 0 run tellraw @s {"text":"You harvested a Golden Apple!","color":"red"}
