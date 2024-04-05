# Clear fire resistance
effect clear @s minecraft:fire_resistance

# Mark Netherborn and Trailblazer players as no longer having fire resistance
execute if score @s uhcp_augment matches 214 run scoreboard players set @s uhcp_aug_tier 100
execute if score @s uhcp_augment matches 231 run scoreboard players set @s uhcp_aug_tier 100
