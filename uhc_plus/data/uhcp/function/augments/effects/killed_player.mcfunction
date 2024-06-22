execute at @s[scores={uhcp_augment=30}] run function uhcp:augments/effects/gold/bloodthirsty
execute unless entity @s[scores={uhcp_aug_gloryOfRa=0..,uhcp_augment=237}] run return fail
scoreboard players add @s uhcp_aug_gloryOfRa 2
loot give @s loot uhcp:augments/sundisk
loot give @s loot uhcp:augments/sundisk
