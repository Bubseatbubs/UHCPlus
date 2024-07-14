# Roll silver augments
execute in uhcp:main positioned 0 -65 0 summon minecraft:chest_minecart run function uhcp:augments/roll/silver/store

# End
tag @s remove UHCP_GeneratingAugments
scoreboard players set @s uhcp_aug_choosingAugment 0
